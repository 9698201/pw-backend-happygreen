from django.db import models
from utenti.models import Utente
from gruppi.models import Gruppo

class Post(models.Model):
    gruppo = models.ForeignKey(Gruppo, on_delete=models.CASCADE, related_name='posts')
    autore = models.ForeignKey(Utente, on_delete=models.CASCADE, related_name='posts')
    immagine = models.ImageField(upload_to='post_images/', blank=True, null=True)
    riconoscimento = models.CharField(max_length=100)
    descrizione = models.TextField()
    latitudine = models.FloatField()
    longitudine = models.FloatField()
    data_pubblicazione = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Post di {self.autore.username} in {self.gruppo.nome}"

class Commento(models.Model):
    post = models.ForeignKey(Post, on_delete=models.CASCADE, related_name='commenti')
    autore = models.ForeignKey(Utente, on_delete=models.CASCADE)
    testo = models.TextField()
    data_commento = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Commento di {self.autore.username} su post {self.post.id}"