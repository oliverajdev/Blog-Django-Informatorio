# Generated by Django 4.0 on 2021-12-15 17:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog_app', '0011_alter_post_descripcion'),
    ]

    operations = [
        migrations.AlterField(
            model_name='autor',
            name='apellidos',
            field=models.CharField(blank=True, max_length=255, null=True, verbose_name='Apellido del autor'),
        ),
    ]