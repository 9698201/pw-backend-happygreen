from django.db import models
from utenti.models import Utente

class Badge(models.Model):
    nome = models.CharField(max_length=100)
    descrizione = models.TextField()
    punti_assegnati = models.PositiveIntegerField()

    def __str__(self):
        return self.nome

class UtenteBadge(models.Model):
    utente = models.ForeignKey(Utente, on_delete=models.CASCADE)
    badge = models.ForeignKey(Badge, on_delete=models.CASCADE)
    data_conseguimento = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.utente.username} - {self.badge.nome}"