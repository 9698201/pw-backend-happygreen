from rest_framework import viewsets, permissions, status
from rest_framework.decorators import action
from rest_framework.response import Response
from django.utils.timezone import now

from .models import Gruppo, UtenteGruppo
from .serializers import GruppoSerializer, UtenteGruppoSerializer
from utenti.models import Utente

class GruppoViewSet(viewsets.ModelViewSet):
    queryset = Gruppo.objects.all()
    serializer_class = GruppoSerializer
    permission_classes = [permissions.IsAuthenticated]

    def perform_create(self, serializer):
        gruppo = serializer.save(creatore=self.request.user)
        UtenteGruppo.objects.create(gruppo=gruppo, utente=self.request.user)

    @action(detail=True, methods=['post'], permission_classes=[permissions.IsAuthenticated])
    def iscriviti(self, request, pk=None):
        gruppo = self.get_object()
        utente = request.user

        if UtenteGruppo.objects.filter(gruppo=gruppo, utente=utente).exists():
            return Response({"detail": "Sei già iscritto a questo gruppo."}, status=status.HTTP_400_BAD_REQUEST)

        iscrizione = UtenteGruppo.objects.create(gruppo=gruppo, utente=utente, data_iscrizione=now())
        serializer = UtenteGruppoSerializer(iscrizione)
        return Response(serializer.data, status=status.HTTP_201_CREATED)

    @action(detail=False, methods=['get'], permission_classes=[permissions.IsAuthenticated])
    def miei_gruppi(self, request):
        gruppi = Gruppo.objects.filter(utentegruppo__utente=request.user)
        serializer = GruppoSerializer(gruppi, many=True)
        return Response(serializer.data)