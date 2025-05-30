# Generated by Django 4.2.20 on 2025-05-12 09:29

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Gruppo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=100)),
                ('descrizione', models.TextField(blank=True)),
                ('data_creazione', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='UtenteGruppo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data_iscrizione', models.DateTimeField(auto_now_add=True)),
                ('gruppo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gruppi.gruppo')),
            ],
        ),
    ]
