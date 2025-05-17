from rest_framework import viewsets, permissions
from .models import Badge, UtenteBadge
from .serializers import BadgeSerializer, UtenteBadgeSerializer

class BadgeViewSet(viewsets.ModelViewSet):
    queryset = Badge.objects.all()
    serializer_class = BadgeSerializer
    permission_classes = [permissions.IsAuthenticated]

class UtenteBadgeViewSet(viewsets.ModelViewSet):
    serializer_class = UtenteBadgeSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        return UtenteBadge.objects.filter(utente=self.request.user)

    def perform_create(self, serializer):
        serializer.save(utente=self.request.user)