from rest_framework import serializers
from .models import Quiz, Domanda, Risposta, RisultatoQuiz

class RispostaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Risposta
        fields = ['id', 'testo', 'corretta']

class DomandaSerializer(serializers.ModelSerializer):
    risposte = RispostaSerializer(many=True, read_only=True)

    class Meta:
        model = Domanda
        fields = ['id', 'testo', 'risposte']

class QuizSerializer(serializers.ModelSerializer):
    domande = DomandaSerializer(many=True, read_only=True)

    class Meta:
        model = Quiz
        fields = ['id', 'titolo', 'descrizione', 'domande']

class RisultatoQuizSerializer(serializers.ModelSerializer):
    class Meta:
        model = RisultatoQuiz
        fields = ['id', 'utente', 'quiz', 'punteggio', 'data']
        read_only_fields = ['utente', 'data']