from typing import List
from django.shortcuts import render
from django.views.generic import TemplateView,ListView,DetailView
from .models import  Post, Comentarios
from Aplications.blog_app import models


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
        queryset = Post.objects.filter(
           
           categoria__nombre = 'Noticias'
           
         )
        if palabra_clave:
            return lista
        else: return queryset
    
class PostDetail(DetailView):
    template_name = 'post.html'
    model = Post
    
    def get_context_data(self, *args, **kwargs):
        context = super(PostDetail, self).get_context_data(*args, **kwargs)
        
        comentarios = self.kwargs['slug']
         
        context['coment'] = Comentarios.objects.filter(
             
        post__slug = comentarios
             
         )
        print('**************************',comentarios)
         
        
       
        return context
   

       
 
    




    
    
class ObjetivosView(ListView):
    template_name = 'objetivos.html'
    context_object_name = 'lista'
    ordering = 'id'

    
    def get_queryset(self):
        palabra_clave = self.request.GET.get('kword', '')
        lista = Post.objects.filter(
            titulo__icontains = palabra_clave
        )
        queryset = Post.objects.filter(
           
           categoria__nombre = 'Objetivos'
           
         )
        
        if palabra_clave:
            return lista
        else: return queryset
 
 
 
 
 
 
class ComentariosView(ListView):
     template_name = 'comentarios.html'
     context_object_name = 'coment'
     
     
    
     
   
    #  def get_queryset(self):
    #      comentarios = self.kwargs['slug']
         
    #      coment = Comentarios.objects.filter(
             
    #          post__slug = comentarios
             
    #      )
    #      print('**************************',comentarios)
         
    #      return coment
     
     
     
  
        
 
        
    

    

  


    