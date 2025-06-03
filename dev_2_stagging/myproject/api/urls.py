from django.urls import path
from .views import api_one, api_two

urlpatterns = [
    path('api1/', api_one),
    path('api2/', api_two),
]
