from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import PostViewSet, CommentoViewSet

router = DefaultRouter()
router.register(r'posts', PostViewSet, basename='post')
router.register(r'commenti', CommentoViewSet, basename='commenti')

urlpatterns = [
    path('', include(router.urls)),
]