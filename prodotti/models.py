from django.db import models
from utenti.models import Utente

class Prodotto(models.Model):
    nome = models.CharField(max_length=100)
    barcode = models.CharField(max_length=50, unique=True)
    eco_rating = models.IntegerField()
    materiali = models.TextField()
    descrizione = models.TextField()

    def __str__(self):
        return self.nome

class ProdottoScansionato(models.Model):
    utente = models.ForeignKey(Utente, on_delete=models.CASCADE)
    prodotto = models.ForeignKey(Prodotto, on_delete=models.CASCADE)
    data_scansione = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.utente.username} ha scansionato {self.prodotto.nome}"