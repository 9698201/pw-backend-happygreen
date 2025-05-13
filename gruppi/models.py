from django.db import models
from utenti.models import Utente

class Gruppo(models.Model):
    nome = models.CharField(max_length=100)
    descrizione = models.TextField(blank=True)
    data_creazione = models.DateTimeField(auto_now_add=True)
    creatore = models.ForeignKey(Utente, on_delete=models.CASCADE, related_name='gruppi_creati')

    def __str__(self):
        return self.nome

class UtenteGruppo(models.Model):
    utente = models.ForeignKey(Utente, on_delete=models.CASCADE)
    gruppo = models.ForeignKey(Gruppo, on_delete=models.CASCADE)
    data_iscrizione = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.utente.username} in {self.gruppo.nome}"