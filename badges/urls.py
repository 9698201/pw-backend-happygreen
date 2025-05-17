from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import BadgeViewSet, UtenteBadgeViewSet

router = DefaultRouter()
router.register(r'', BadgeViewSet, basename='badge')
router.register(r'utenti', UtenteBadgeViewSet, basename='utente-badge')

urlpatterns = [
    path('', include(router.urls)),
]