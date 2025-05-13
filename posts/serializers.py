from rest_framework import serializers
from .models import Post, Commento

class PostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = '__all__'

class CommentoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Commento
        fields = '__all__'