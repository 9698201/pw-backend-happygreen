from django.db import models
from utenti.models import Utente

class Quiz(models.Model):
    titolo = models.CharField(max_length=200)
    descrizione = models.TextField(blank=True)

    def __str__(self):
        return self.titolo

class Domanda(models.Model):
    quiz = models.ForeignKey(Quiz, on_delete=models.CASCADE, related_name='domande')
    testo = models.TextField()

    def __str__(self):
        return f"{self.quiz.titolo} - {self.testo[:50]}"

class Risposta(models.Model):
    domanda = models.ForeignKey(Domanda, on_delete=models.CASCADE, related_name='risposte')
    testo = models.CharField(max_length=255)
    corretta = models.BooleanField(default=False)

    def __str__(self):
        return f"{self.domanda.testo[:30]} - {self.testo[:30]}"

class RisultatoQuiz(models.Model):
    utente = models.ForeignKey(Utente, on_delete=models.CASCADE)
    quiz = models.ForeignKey(Quiz, on_delete=models.CASCADE)
    punteggio = models.FloatField()
    data = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.utente.username} - {self.quiz.titolo} ({self.punteggio})"