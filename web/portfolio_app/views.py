from django.shortcuts import render
import json
from django.views import generic
from django.shortcuts import get_object_or_404, render

# get youtube video id
from urllib.parse import urlparse, parse_qs

from .models import Project, Tag, MediaAsset


# Create your views here.
class ProjectIndexView(generic.ListView):
    model = Project
    template_name = 'portfolio_app/index.html'

    def get_queryset(self):
        qs = super(ProjectIndexView, self).get_queryset()
        return qs

    def get_paginate_by(self, queryset):
        return 1000

    def get_context_data(self, **kwargs):
        context = super(ProjectIndexView, self).get_context_data(**kwargs)
        object_list = context['object_list']

        # get all Tags
        tags = Tag.objects.all()
        context['tags'] = tags

        return context
