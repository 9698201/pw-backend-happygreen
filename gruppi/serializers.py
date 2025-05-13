"""from rest_framework import serializers
from .models import Gruppo, UtenteGruppo

class GruppoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Gruppo
        fields = '__all__'

class UtenteGruppoSerializer(serializers.ModelSerializer):
    class Meta:
        model = UtenteGruppo
        fields = '__all__'"""
from rest_framework import serializers
from gruppi.models import Gruppo, UtenteGruppo
from utenti.models import Utente  # import del modello custom utente

class GruppoSerializer(serializers.ModelSerializer):
    creatore_username = serializers.CharField(source='creatore.username', read_only=True)

    class Meta:
        model = Gruppo
        fields = ['id', 'nome', 'descrizione', 'data_creazione', 'creatore', 'creatore_username']
        read_only_fields = ['creatore', 'data_creazione']


class UtenteGruppoSerializer(serializers.ModelSerializer):
    class Meta:
        model = UtenteGruppo
        fields = ['id', 'utente', 'gruppo', 'data_iscrizione']
        read_only_fields = ['data_iscrizione']

class IscrizioneGruppoSerializer(serializers.ModelSerializer):
    class Meta:
        model = UtenteGruppo
        fields = ['id', 'gruppo', 'utente', 'data_iscrizione']
        read_only_fields = ['id', 'data_iscrizione']