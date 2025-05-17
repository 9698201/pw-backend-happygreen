from rest_framework import serializers
from .models import Badge, UtenteBadge

class BadgeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Badge
        fields = ['id', 'nome', 'descrizione', 'punti_assegnati']

class UtenteBadgeSerializer(serializers.ModelSerializer):
    badge_nome = serializers.CharField(source='badge.nome', read_only=True)
    badge_descrizione = serializers.CharField(source='badge.descrizione', read_only=True)
    punti_assegnati = serializers.IntegerField(source='badge.punti_assegnati', read_only=True)

    class Meta:
        model = UtenteBadge
        fields = ['id', 'utente', 'badge', 'badge_nome', 'badge_descrizione', 'punti_assegnati', 'data_conseguimento']
        read_only_fields = ['utente', 'data_conseguimento']