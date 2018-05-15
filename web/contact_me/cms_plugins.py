from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool

from .models import ContactMe, Message


@plugin_pool.register_plugin
class ContactMeComponentPlugin(CMSPluginBase):
    model = ContactMe
    render_template = 'contact_me_plugin/plugin/contact_me_component.html'
    cache = True

    def render(self, context, instance, placeholder):
        context = super(ContactMeComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        request = context['request']

        if request.method == 'POST':
            message = Message(email=request.POST['usermail'], name=request.POST['username'],
                              subject=request.POST['subject'], message=request.POST['message'])
            message.save()
            print(request.POST['username'])

        return context


@plugin_pool.register_plugin
class NoTitleContactMeComponentPlugin(CMSPluginBase):
    model = ContactMe
    render_template = 'contact_me_plugin/plugin/no_title_contact_me_component.html'
    cache = True

    def render(self, context, instance, placeholder):
        context = super(NoTitleContactMeComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        request = context['request']

        if request.method == 'POST':
            message = Message(email=request.POST['usermail'], name=request.POST['username'],
                              subject=request.POST['subject'], message=request.POST['message'])
            message.save()
            print(request.POST['username'])

        return context
