from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
import json

from .models import TawkPlugin, CalendlyPlugin
from .forms import CalendlyPluginForm


@plugin_pool.register_plugin
class TawkAddonPlugin(CMSPluginBase):
    model = TawkPlugin
    render_template = 'addons_plugin/plugin/tawk-addons.html'
    cache = True

    def render(self, context, instance, placeholder):
        context = super(TawkAddonPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        tawk_object = {
            'tawk_embedded_url': instance.tawk_embedded_url,
            'name': instance.name
        }
        context['tawk_object'] = json.dumps(tawk_object)

        return context


@plugin_pool.register_plugin
class CalendlyAddonPlugin(CMSPluginBase):
    model = CalendlyPlugin
    render_template = 'addons_plugin/plugin/calendly-addons.html'
    cache = True
    form = CalendlyPluginForm

    def render(self, context, instance, placeholder):
        context = super(CalendlyAddonPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        calendly_object = {
            'calendly_embedded_url': instance.calendly_embedded_url,
            'text_message': instance.text_message,
            'color': instance.color
        }
        context['calendly_object'] = json.dumps(calendly_object)

        return context


@plugin_pool.register_plugin
class CalendlyMenuAddonPlugin(CMSPluginBase):
    model = CalendlyPlugin
    render_template = 'addons_plugin/plugin/calendly-addon-menu-component.html'
    cache = True
    form = CalendlyPluginForm

    def render(self, context, instance, placeholder):
        context = super(CalendlyMenuAddonPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        calendly_object = {
            'calendly_embedded_url': instance.calendly_embedded_url,
            'text_message': instance.text_message,
            'color': instance.color
        }
        context['calendly_object'] = json.dumps(calendly_object)

        return context
