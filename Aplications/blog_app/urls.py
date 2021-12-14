from django.urls import path
from . import views


urlpatterns = [
    path('base/',views.BaseView.as_view()),
    path('noticias/',views.NoticiasView.as_view()),
]