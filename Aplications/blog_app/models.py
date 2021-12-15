from django.db import models
from ckeditor.fields import RichTextField

class Categoria(models.Model):
    id = models.AutoField(primary_key= True)
    nombre = models.CharField('Nombre de la Categoria', max_length= 100,null= False, blank= False)
    estado = models.BooleanField('Categoria Activada/Categoria no Activada', default = True)
    fecha_creacion = models.DateField('Fecha de Creacion', auto_now=False,auto_now_add=True)
    
    class Meta:
        verbose_name = 'Categoría'
        verbose_name_plural = 'Categorías'
        
    def __str__(self):
        return self.nombre
    
    
class Autor(models.Model):
    id = models.AutoField(primary_key= True)
    nombres = models.CharField('Nombre del autor',max_length=255, null= False, blank= False)
    apellidos = models.CharField('Apellido del autor',max_length=255, null= True, blank= True)
    ig = models.URLField('Instagram',null= True, blank=True)
    fb = models.URLField('Facebook',null= True, blank=True)
    tw = models.URLField('Twitter',null= True, blank=True)
    email = models.EmailField('Correo Electronico',null= True, blank= True)
    fecha_de_creacion = models.DateField('Fecha de creacion',auto_now = False, auto_now_add= True)
    
    class Meta:
        verbose_name = 'Autor'
        verbose_name_plural = 'Autores'
        
    def __str__(self):
        return '%s %s' %(self.apellidos,self.nombres)
    
class Post(models.Model):
    id = models.AutoField(primary_key= True)
    titulo = models.CharField('Titulo', max_length=200, blank= False, null= False)
    slug= models.CharField('Slug',max_length=100, blank= False, null= False)
    descripcion = models.CharField('Descripcion', max_length= 370, blank= False, null= False)
    contenido = RichTextField('Contenido', null= True)
    imagen = models.URLField(max_length=255, blank= True, null= True)
    autor = models.ForeignKey(Autor, on_delete = models.CASCADE)
    categoria = models.ForeignKey(Categoria, on_delete= models.CASCADE)
    estado = models.BooleanField('Publicado/No Publicado', default= True)
    fecha_creacion = models.DateField('Fecha de creacion')
        
    class Meta:
            verbose_name = 'Post'
            verbose_name_plural = 'Posts'
            
    def __str__(self) :
            return self.titulo

