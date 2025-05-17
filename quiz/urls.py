from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import QuizViewSet, RisultatoQuizViewSet

router = DefaultRouter()
router.register(r'', QuizViewSet, basename='quiz')
router.register(r'risultati', RisultatoQuizViewSet, basename='risultato-quiz')

urlpatterns = [
    path('', include(router.urls)),
]