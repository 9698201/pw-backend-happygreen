from rest_framework import serializers
from .models import Badge, UtenteBadge

class BadgeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Badge
        fields = '__all__'

class UtenteBadgeSerializer(serializers.ModelSerializer):
    class Meta:
        model = UtenteBadge
        fields = '__all__'