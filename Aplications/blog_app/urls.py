from django.urls import path
from . import views


urlpatterns = [
    
    path('base/',views.BaseView.as_view()),
    path('noticias/',views.NoticiasView.as_view()),
    path('post/<slug:slug>/',views.PostDetail.as_view()),
    path('objetivos/',views.ObjetivosView.as_view()),
    
]