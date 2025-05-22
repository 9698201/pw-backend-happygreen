from rest_framework import viewsets, permissions, status
from rest_framework.decorators import action
from rest_framework.response import Response
from .models import Quiz, RisultatoQuiz
from .serializers import QuizSerializer, RisultatoQuizSerializer, QuizSubmissionSerializer


class QuizViewSet(viewsets.ModelViewSet):
    queryset = Quiz.objects.all()
    serializer_class = QuizSerializer
    permission_classes = [permissions.IsAuthenticated]

    @action(detail=True, methods=['post'])
    def submit(self, request, pk=None):
        """
        Submit quiz answers and calculate score
        Expected format: {"risposte": [{"domanda_id": 1, "risposta_id": 2}, ...]}
        """
        quiz = self.get_object()
        serializer = QuizSubmissionSerializer(data=request.data)

        if serializer.is_valid():
            risposte_utente = serializer.validated_data['risposte']

            # Calculate score
            total_domande = quiz.domande.count()
            risposte_corrette = 0

            for risposta_utente in risposte_utente:
                domanda_id = risposta_utente['domanda_id']
                risposta_id = risposta_utente['risposta_id']

                try:
                    # Check if the answer is correct
                    domanda = quiz.domande.get(id=domanda_id)
                    risposta = domanda.risposte.get(id=risposta_id)

                    if risposta.corretta:
                        risposte_corrette += 1
                except:
                    # Invalid question or answer ID
                    continue

            # Calculate percentage score
            punteggio = (risposte_corrette / total_domande) * 100 if total_domande > 0 else 0

            # Save result
            risultato = RisultatoQuiz.objects.create(
                utente=request.user,
                quiz=quiz,
                punteggio=punteggio
            )

            return Response({
                'punteggio': punteggio,
                'risposte_corrette': risposte_corrette,
                'total_domande': total_domande,
                'risultato_id': risultato.id
            })

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class RisultatoQuizViewSet(viewsets.ModelViewSet):
    serializer_class = RisultatoQuizSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        return RisultatoQuiz.objects.filter(utente=self.request.user)

    def perform_create(self, serializer):
        serializer.save(utente=self.request.user)