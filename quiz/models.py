from django.db import models
from badges.models import Badge

class Quiz(models.Model):
    domanda = models.TextField()
    risposta_corretta = models.CharField(max_length=200)
    difficolta = models.IntegerField(choices=[(1, 'Facile'), (2, 'Media'), (3, 'Difficile')])
    badge = models.ForeignKey(Badge, on_delete=models.SET_NULL, null=True, blank=True)

    def __str__(self):
        return f"Quiz: {self.domanda[:50]}..."