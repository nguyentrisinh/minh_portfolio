# -*- coding: utf-8 -*-
# Generated by Django 1.11.12 on 2018-05-02 02:04
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('cms', '0020_old_tree_cleanup'),
        ('hero_area', '0002_auto_20180427_1600'),
    ]

    operations = [
        migrations.CreateModel(
            name='ShortHeroArea',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, related_name='hero_area_shortheroarea', serialize=False, to='cms.CMSPlugin')),
                ('title', models.CharField(max_length=150)),
                ('working_position', models.CharField(max_length=250)),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
        migrations.AlterModelManagers(
            name='heroarea',
            managers=[
            ],
        ),
    ]
