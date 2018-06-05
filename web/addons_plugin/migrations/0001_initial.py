# -*- coding: utf-8 -*-
# Generated by Django 1.11.12 on 2018-05-18 05:11
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('cms', '0020_old_tree_cleanup'),
    ]

    operations = [
        migrations.CreateModel(
            name='TawkPlugin',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, related_name='addons_plugin_tawkplugin', serialize=False, to='cms.CMSPlugin')),
                ('name', models.CharField(max_length=100)),
                ('tawk_embedded_url', models.CharField(max_length=500)),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
    ]