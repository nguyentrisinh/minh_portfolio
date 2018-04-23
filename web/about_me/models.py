from django.db import models
from cms.models.pluginmodel import CMSPlugin
from djangocms_text_ckeditor.fields import HTMLField
from django.core.validators import MinValueValidator, MaxValueValidator
from django.utils.translation import ugettext_lazy as _


# Create your models here.
class AboutMe(CMSPlugin):
    objects = models.Manager()

    title = models.CharField(max_length=100, null=False, blank=False)
    description = HTMLField(_('description'), blank=True, default='')
    resume_file = models.FileField(upload_to='resume/file/', null=True, blank=True, default='')

    def __str__(self):
        return self.title


class StatisticPlugin(CMSPlugin):
    objects = models.Manager()

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def copy_relations(self, old_instance):
        for statistic_item in old_instance.statisticitem_set.all():
            statistic_item_object = StatisticItem()

            statistic_item_object.title = statistic_item.title
            statistic_item_object.statistic = statistic_item.statistic

            statistic_item_object.statistic_plugin_id = self

            statistic_item_object.save()
        pass


class StatisticItem(models.Model):
    objects = models.Manager()

    title = models.CharField(max_length=100, null=False, blank=False)
    statistic = models.CharField(max_length=100, null=False, blank=False)

    statistic_plugin_id = models.ForeignKey(StatisticPlugin, on_delete=models.CASCADE)

    def __str__(self):
        return '{}: {}'.format(self.title, self.statistic)


# Skill Plugin
class SkillPlugin(CMSPlugin):
    objects = models.Manager()

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def copy_relations(self, old_instance):
        for skill_item in old_instance.skillitem_set.all():
            skill_item_object = SkillItem()

            skill_item_object.title = skill_item.title
            skill_item_object.percentage = skill_item.percentage

            skill_item_object.skill_plugin_item = self

            skill_item_object.save()
        pass


class SkillItem(models.Model):
    objects = models.Manager()

    title = models.CharField(max_length=100, null=False, blank=False)
    percentage = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)])

    skill_plugin_item = models.ForeignKey(SkillPlugin, on_delete=models.CASCADE)

    def __str__(self):
        return '{}: {}'.format(self.title, self.percentage)


# Resume Plugin
# class ResumePlugin(CMSPlugin):
#     objects = models.Manager()
#
#     created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
#     updated_at = models.DateTimeField(auto_now=True, editable=True)


class TimelineHeader(CMSPlugin):
    objects = models.Manager()

    title = models.CharField(max_length=100, null=False, blank=False)
    order = models.IntegerField(null=False, blank=False)

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        return self.title

    def copy_relations(self, old_instance):
        for timeline_item in old_instance.timelineblock_set.all():
            timeline_object = TimelineBlock()

            timeline_object.title = timeline_item.title
            timeline_object.content = timeline_item.content
            timeline_object.period_time = timeline_item.period_time
            timeline_object.url = timeline_item.url
            timeline_object.is_left = timeline_item.is_left

            timeline_object.timeline_header_id = self
            timeline_object.save()

        pass


class TimelineBlock(models.Model):
    objects = models.Manager()

    title = models.CharField(max_length=100, null=False, blank=False)
    content = models.TextField(null=True, blank=True, default='')
    period_time = models.CharField(max_length=250, null=False, blank=False)
    url = models.CharField(max_length=250, null=True, blank=True, default='')
    is_left = models.BooleanField(default=True)

    timeline_header_id = models.ForeignKey(TimelineHeader, on_delete=models.CASCADE)

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        return self.title

