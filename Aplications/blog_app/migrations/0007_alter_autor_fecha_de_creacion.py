# Generated by Django 4.0 on 2021-12-15 16:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog_app', '0006_alter_autor_email'),
    ]

    operations = [
        migrations.AlterField(
            model_name='autor',
            name='fecha_de_creacion',
            field=models.DateField(verbose_name='Fecha de creacion'),
        ),
    ]