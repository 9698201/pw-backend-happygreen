from gruppi import views
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import GruppoViewSet

router = DefaultRouter()
router.register(r'', GruppoViewSet, basename='gruppo')

urlpatterns = [
    path('', views.GruppoListCreateView.as_view(), name='gruppi-list-create'),
    path('iscrizione/', views.IscrizioneGruppoView.as_view(), name='iscrizione-gruppo'),
    path('miei-gruppi/', views.MieiGruppiView.as_view(), name='miei-gruppi'),
    path('', include(router.urls)),
]