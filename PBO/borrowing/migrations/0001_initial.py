# -*- coding: utf-8 -*-
# Generated by Django 1.11.29 on 2021-05-25 15:21
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('items', '0001_initial'),
        ('subscribers', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Peminjam',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('borrow_date', models.DateField(max_length=20)),
                ('return_date', models.DateField(max_length=20)),
                ('fee', models.IntegerField(max_length=10)),
                ('items_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='items.Barang')),
                ('subscriber_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='subscribers.Pelanggan')),
            ],
        ),
    ]
