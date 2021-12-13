from django.shortcuts import render
from django.views.generic import TemplateView,ListView
from .models import Post


class BaseView(TemplateView):
    template_name = 'base.html'
    
class HomeView(ListView):
    template_name = 'home.html'
    context_object_name = 'lista'
    
    def get_queryset(self):
        palabra_clave = self.request.GET.get('kword', '')
        lista = Post.objects.filter(
            titulo__icontains = palabra_clave
        )
        return lista
