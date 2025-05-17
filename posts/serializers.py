from rest_framework import serializers
from .models import Post, Commento

class PostSerializer(serializers.ModelSerializer):
    autore_username = serializers.CharField(source='autore.username', read_only=True)
    gruppo_nome = serializers.CharField(source='gruppo.nome', read_only=True)

    class Meta:
        model = Post
        fields = [
            'id', 'gruppo', 'gruppo_nome', 'autore', 'autore_username',
            'immagine', 'riconoscimento', 'descrizione',
            'latitudine', 'longitudine', 'data_pubblicazione'
        ]
        read_only_fields = ['autore', 'data_pubblicazione']

class CommentoSerializer(serializers.ModelSerializer):
    autore_username = serializers.CharField(source='autore.username', read_only=True)

    class Meta:
        model = Commento
        fields = ['id', 'post', 'autore', 'autore_username', 'testo', 'data_commento']
        read_only_fields = ['autore', 'data_commento']