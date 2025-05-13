from django.urls import path
from .views import RegistrazioneView
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView
from .views import ProfiloUtenteView

urlpatterns = [
    path('register/', RegistrazioneView.as_view(), name='register'),
    path('login/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('profile/', ProfiloUtenteView.as_view(), name='user-profile'),
]