from django.contrib import admin
from Aplications.blog_app.models import *
from import_export import resources
from import_export.admin import ImportExportModelAdmin


class CategoriaResource(resources.ModelResource):
    class Meta:
        model = Categoria
    


class CategoriaAdmin(ImportExportModelAdmin,admin.ModelAdmin):
    search_fields = ['nombre']
    list_display = ('nombre','estado','fecha_creacion')
    resource_class = CategoriaResource
    
class AutorResource(resources.ModelResource):
    class Meta:
        model = Autor
        

        
        
            
class AutorAdmin(ImportExportModelAdmin,admin.ModelAdmin):
    search_fields = ['nombres','apellidos']
    list_display = ('nombres','apellidos','fecha_de_creacion','id')
    resource_class = AutorResource
    

class ComentariosAdmin(admin.ModelAdmin):
    list_display = ('usuario','fecha_creacion','post')
    

class PostResource(resources.ModelResource):
    class Meta:
        model = Post

class PostAdmin(admin.ModelAdmin):
    search_fields = ['titulo']
    list_display = ('titulo','id','fecha_creacion','categoria')
    model = Post
       

admin.site.register(Categoria,CategoriaAdmin)
admin.site.register(Autor,AutorAdmin)
admin.site.register(Post,PostAdmin)
admin.site.register(Comentarios,ComentariosAdmin)

