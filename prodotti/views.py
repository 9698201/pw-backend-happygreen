from rest_framework import viewsets, permissions
from rest_framework.decorators import action
from rest_framework.response import Response
from .models import Prodotto, ProdottoScansionato
from .serializers import ProdottoSerializer, ProdottoScansionatoSerializer

class ProdottoViewSet(viewsets.ModelViewSet):
    queryset = Prodotto.objects.all()
    serializer_class = ProdottoSerializer
    permission_classes = [permissions.IsAuthenticated]

    @action(detail=True, methods=['post'], permission_classes=[permissions.IsAuthenticated])
    def scansiona(self, request, pk=None):
        prodotto = self.get_object()
        scansione = ProdottoScansionato.objects.create(prodotto=prodotto, utente=request.user)
        serializer = ProdottoScansionatoSerializer(scansione)
        return Response(serializer.data)

    @action(detail=False, methods=['get'], permission_classes=[permissions.IsAuthenticated])
    def miei_prodotti(self, request):
        scansioni = ProdottoScansionato.objects.filter(utente=request.user).select_related('prodotto')
        prodotti = [s.prodotto for s in scansioni]
        serializer = ProdottoSerializer(prodotti, many=True)
        return Response(serializer.data)