from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import ProdottoViewSet

router = DefaultRouter()
router.register(r'prodotti', ProdottoViewSet, basename='prodotto')

urlpatterns = [
    path('', include(router.urls)),
]