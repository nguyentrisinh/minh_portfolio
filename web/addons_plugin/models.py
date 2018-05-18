from django.db import models

from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class TawkPlugin(CMSPlugin):
    objects = models.Manager()

    name = models.CharField(max_length=100, null=False, blank=False)
    tawk_embedded_url = models.CharField(max_length=500, null=False, blank=False)

    def __str__(self):
        return '{}: {}'.format(self.name, self.tawk_embedded_url)


class CalendlyPlugin(CMSPlugin):
    objects = models.Manager()

    calendly_embedded_url = models.CharField(max_length=500, null=False, blank=False)
    text_message = models.CharField(max_length=250, null=False, blank=False)
    color = models.CharField(max_length=15, default='#76b51b')

    def __str__(self):
        return self.calendly_embedded_url
