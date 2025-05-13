from rest_framework import serializers
from .models import Prodotto, ProdottoScansionato

class ProdottoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Prodotto
        fields = '__all__'

class ProdottoScansionatoSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProdottoScansionato
        fields = '__all__'