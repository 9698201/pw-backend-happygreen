from rest_framework import viewsets, permissions
from .models import Quiz, RisultatoQuiz
from .serializers import QuizSerializer, RisultatoQuizSerializer

class QuizViewSet(viewsets.ModelViewSet):
    queryset = Quiz.objects.all()
    serializer_class = QuizSerializer
    permission_classes = [permissions.IsAuthenticated]

class RisultatoQuizViewSet(viewsets.ModelViewSet):
    serializer_class = RisultatoQuizSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        return RisultatoQuiz.objects.filter(utente=self.request.user)

    def perform_create(self, serializer):
        serializer.save(utente=self.request.user)