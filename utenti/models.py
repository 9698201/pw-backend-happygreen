from django.contrib.auth.models import AbstractUser
from django.db import models

class Utente(AbstractUser):
    email = models.EmailField(unique=True)
    data_registrazione = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.username