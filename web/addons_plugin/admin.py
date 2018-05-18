from django.contrib import admin

from .models import TawkPlugin, CalendlyPlugin
from .forms import CalendlyPluginForm


# Register your models here.
admin.site.register(TawkPlugin)


class CalendlyPluginAdmin(admin.ModelAdmin):
    form = CalendlyPluginForm


admin.site.register(CalendlyPlugin, CalendlyPluginAdmin)

