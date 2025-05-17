from django.urls import path
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('admin/', admin.site.urls),
    path('api/auth/', include('utenti.urls')),
    path('api/gruppi/', include('gruppi.urls')),
    path('api/', include('prodotti.urls')),
    path('api/posts/', include('posts.urls')),
    path('api/badges/', include('badges.urls')),
    path('api/quiz/', include('quiz.urls')),
]