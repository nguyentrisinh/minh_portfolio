from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin

from .models import Project, Tag


@plugin_pool.register_plugin
class PortfolioComponentPlugin(CMSPluginBase):
    model = CMSPlugin
    render_template = 'portfolio_app/plugin/portfolio_list_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(PortfolioComponentPlugin, self).render(context, instance, placeholder)

        # Get tags
        tags = Tag.objects.all()

        # Get projects
        projects = Project.objects.all()

        # Apply into django template
        context['tags'] = tags
        context['projects'] = projects

        return context
