from django.urls import path
from profiles_api import views

# Define custom URLs of the profile_api app
urlpatterns = [
    path('hello_view/', views.HelloApiView.as_view())
]
