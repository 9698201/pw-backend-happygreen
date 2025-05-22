from rest_framework import serializers
from .models import Quiz, Domanda, Risposta, RisultatoQuiz


class RispostaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Risposta
        fields = ['id', 'testo', 'corretta']


class RispostaQuizSerializer(serializers.ModelSerializer):
    """Serializer for quiz answers without showing the correct flag"""

    class Meta:
        model = Risposta
        fields = ['id', 'testo']


class DomandaSerializer(serializers.ModelSerializer):
    risposte = RispostaSerializer(many=True, read_only=True)

    class Meta:
        model = Domanda
        fields = ['id', 'testo', 'risposte']


class DomandaQuizSerializer(serializers.ModelSerializer):
    """Serializer for quiz questions without showing correct answers"""
    risposte = RispostaQuizSerializer(many=True, read_only=True)

    class Meta:
        model = Domanda
        fields = ['id', 'testo', 'risposte']


class QuizSerializer(serializers.ModelSerializer):
    domande = DomandaQuizSerializer(many=True, read_only=True)

    class Meta:
        model = Quiz
        fields = ['id', 'titolo', 'descrizione', 'domande']


class RisultatoQuizSerializer(serializers.ModelSerializer):
    quiz_titolo = serializers.CharField(source='quiz.titolo', read_only=True)

    class Meta:
        model = RisultatoQuiz
        fields = ['id', 'utente', 'quiz', 'quiz_titolo', 'punteggio', 'data']
        read_only_fields = ['utente', 'data']


class QuizAnswerSubmissionSerializer(serializers.Serializer):
    domanda_id = serializers.IntegerField()
    risposta_id = serializers.IntegerField()


class QuizSubmissionSerializer(serializers.Serializer):
    risposte = QuizAnswerSubmissionSerializer(many=True)