from django.contrib import admin

from .models import AboutMe, StatisticItem, StatisticPlugin, SkillItem, SkillPlugin, TimelineBlock, \
    TimelineHeader


# Register your models here.
admin.site.register(AboutMe)

# Statistic admin model
admin.site.register(StatisticItem)


class StatisticItemInline(admin.TabularInline):
    model = StatisticItem


class StatisticPluginAdmin(admin.ModelAdmin):
    inlines = [
        StatisticItemInline
    ]


admin.site.register(StatisticPlugin, StatisticPluginAdmin)

# Skills admin model
admin.site.register(SkillItem)


class SkillItemInline(admin.TabularInline):
    model = SkillItem


class SkillPluginAdmin(admin.ModelAdmin):
    inlines = [
        SkillItemInline
    ]


admin.site.register(SkillPlugin, SkillPluginAdmin)


# Timeline admin model
admin.site.register(TimelineBlock)


class TimelineBlockInline(admin.StackedInline):
    model = TimelineBlock


class TimelineHeaderAdmin(admin.ModelAdmin):
    inlines = [
        TimelineBlockInline
    ]


admin.site.register(TimelineHeader, TimelineHeaderAdmin)

