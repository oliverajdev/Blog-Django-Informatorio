from typing import List
from django.shortcuts import render
from django.views.generic import TemplateView,ListView,DetailView
from .models import Post


class BaseView(TemplateView):
    template_name = 'base.html'
    
class NoticiasView(ListView):
    template_name = 'noticias.html'
    context_object_name = 'lista'
    paginate_by = 3
    ordering = 'fecha_creacion'
    
    def get_queryset(self):
        palabra_clave = self.request.GET.get('kword', '')
        lista = Post.objects.filter(
            titulo__icontains = palabra_clave
        )
        return lista
    
class PostDetail(DetailView):
    template_name = 'post.html'
    model = Post
    
    
class ObjetivosView(ListView):
    template_name = 'objetivos.html'
    context_object_name = 'lista'
    ordering = 'id'
    
  
    
    def get_queryset(self):
        palabra_clave = self.request.GET.get('kword', '')
        lista = Post.objects.filter(
            titulo__icontains = palabra_clave
        )
        return lista
    