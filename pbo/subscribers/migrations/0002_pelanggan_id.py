# -*- coding: utf-8 -*-
# Generated by Django 1.11.29 on 2021-05-25 15:45
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('subscribers', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='pelanggan',
            name='id',
            field=models.IntegerField(default=int),
            preserve_default=False,
        ),
    ]
