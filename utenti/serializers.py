from rest_framework import serializers
from .models import Utente

class UtenteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Utente
        fields = '__all__'

from rest_framework import serializers
from django.contrib.auth import get_user_model
from django.contrib.auth.password_validation import validate_password

Utente = get_user_model()

class RegistrazioneSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True, validators=[validate_password])
    password2 = serializers.CharField(write_only=True)

    class Meta:
        model = Utente
        fields = ['id', 'username', 'email', 'password', 'password2']

    def validate(self, data):
        if data['password'] != data['password2']:
            raise serializers.ValidationError("Le password non coincidono.")
        return data

    def create(self, validated_data):
        validated_data.pop('password2')
        user = Utente.objects.create_user(**validated_data)
        return user

class ProfiloUtenteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Utente
        fields = ['id', 'username', 'email', 'data_registrazione']