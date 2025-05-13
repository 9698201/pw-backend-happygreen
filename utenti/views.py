from rest_framework import generics
from .serializers import RegistrazioneSerializer
from django.contrib.auth import get_user_model

from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.views import APIView
from .serializers import ProfiloUtenteSerializer


Utente = get_user_model()

class RegistrazioneView(generics.CreateAPIView):
    queryset = Utente.objects.all()
    serializer_class = RegistrazioneSerializer

class ProfiloUtenteView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request):
        serializer = ProfiloUtenteSerializer(request.user)
        return Response(serializer.data)