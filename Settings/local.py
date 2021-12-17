from .base import *

DEBUG = True

ALLOWED_HOSTS = []

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'bd_blog',
        'USER': 'root',
        'PASSWORD': 'admin',
        'HOST': 'localhost',
        'PORT': 3306,
    }
}



STATIC_URL = '/Static/'
STATICFILES_DIRS = [BASE_DIR.child('static')]



DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'


