from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool

from .models import AboutMe, StatisticPlugin, StatisticItem, SkillPlugin, SkillItem, TimelineHeader, TimelineBlock
from .admin import StatisticItemInline, SkillItemInline, TimelineBlockInline


@plugin_pool.register_plugin
class AboutMeComponentPlugin(CMSPluginBase):
    model = AboutMe
    render_template = 'about_me_plugin/plugin/about_me_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(AboutMeComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        return context


@plugin_pool.register_plugin
class StatisticComponentPlugin(CMSPluginBase):
    model = StatisticPlugin
    render_template = 'about_me_plugin/plugin/statistics_component.html'
    inlines = [StatisticItemInline]
    cache = False

    def render(self, context, instance, placeholder):
        context = super(StatisticComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        return context


@plugin_pool.register_plugin
class SkillComponentPlugin(CMSPluginBase):
    model = SkillPlugin
    render_template = 'about_me_plugin/plugin/skills_component.html'
    inlines = [SkillItemInline]
    cache = False

    def render(self, context, instance, placeholder):
        context = super(SkillComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        return context


@plugin_pool.register_plugin
class TimelineComponentPlugin(CMSPluginBase):
    model = TimelineHeader
    render_template = 'about_me_plugin/plugin/resume_component.html'
    inlines = [TimelineBlockInline]
    cache = False

    def render(self, context, instance, placeholder):
        context = super(TimelineComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        return context

