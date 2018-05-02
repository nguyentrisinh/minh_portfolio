from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class HeroArea(CMSPlugin):
    objects = models.Manager()

    title = models.CharField(max_length=100, null=False, blank=False)
    name = models.CharField(max_length=100, null=False, blank=False)
    working_position = models.CharField(max_length=100, null=False, blank=False)
    background_image = models.ImageField(upload_to='hero_area/img/', max_length=500, null=False)
    linkedin_url = models.CharField(max_length=255, null=True, blank=True, default='')
    github_url = models.CharField(max_length=255, null=True, blank=True, default='')
    facebook_url = models.CharField(max_length=255, null=True, blank=True, default='')

    def __str__(self):
        return self.name


class ShortHeroArea(CMSPlugin):
    objects = models.Manager()

    title = models.CharField(max_length=150, null=False, blank=False)
    favorite_quotes = models.CharField(max_length=250, null=False, blank=False)
    author = models.CharField(max_length=120, null=True, blank=True, default='')

    def __str__(self):
        return self.title
