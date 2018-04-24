from django.contrib import admin

from .models import Tag, Project, MediaAsset, DemoUrlItem


# Register your models here.
admin.site.register(Tag)
admin.site.register(MediaAsset)
admin.site.register(DemoUrlItem)


class MediaAssetInline(admin.StackedInline):
    model = MediaAsset


class DemoUrlItemInline(admin.StackedInline):
    model = DemoUrlItem


class ProjectAdmin(admin.ModelAdmin):
    inlines = [
        MediaAssetInline,
        DemoUrlItemInline
    ]


admin.site.register(Project, ProjectAdmin)
