# -*- coding: utf-8 -*-
# Generated by Django 1.11.12 on 2018-04-23 07:39
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('about_me', '0008_auto_20180423_1431'),
    ]

    operations = [
        migrations.AddField(
            model_name='timelineblock',
            name='url',
            field=models.CharField(blank=True, default='', max_length=250, null=True),
        ),
    ]
