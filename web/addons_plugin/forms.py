from django.forms import ModelForm
from django.forms.widgets import TextInput

from .models import CalendlyPlugin


class CalendlyPluginForm(ModelForm):
    class Meta:
        model = CalendlyPlugin
        fields = '__all__'
        widgets = {
            'color': TextInput(attrs={'type': 'color'}),
        }
