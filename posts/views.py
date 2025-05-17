from rest_framework import viewsets, permissions
from .models import Post, Commento
from .serializers import PostSerializer, CommentoSerializer

class PostViewSet(viewsets.ModelViewSet):
    queryset = Post.objects.all().order_by('-data_pubblicazione')
    serializer_class = PostSerializer
    permission_classes = [permissions.IsAuthenticated]

    def perform_create(self, serializer):
        serializer.save(autore=self.request.user)

class CommentoViewSet(viewsets.ModelViewSet):
    queryset = Commento.objects.all().order_by('-data_commento')
    serializer_class = CommentoSerializer
    permission_classes = [permissions.IsAuthenticated]

    def perform_create(self, serializer):
        serializer.save(autore=self.request.user)