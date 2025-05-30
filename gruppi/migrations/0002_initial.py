# Generated by Django 4.2.20 on 2025-05-12 09:29

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('gruppi', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.AddField(
            model_name='utentegruppo',
            name='utente',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='gruppo',
            name='creatore',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='gruppi_creati', to=settings.AUTH_USER_MODEL),
        ),
    ]
