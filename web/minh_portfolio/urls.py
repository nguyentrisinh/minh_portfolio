# -*- coding: utf-8 -*-
from __future__ import absolute_import, print_function, unicode_literals

from cms.sitemaps import CMSSitemap
from django.conf import settings
from django.conf.urls import include, url
from django.conf.urls.i18n import i18n_patterns
from django.contrib import admin
from django.contrib.sitemaps.views import sitemap
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.views.static import serve

admin.autodiscover()

# urlpatterns = [
#     url(r'^sitemap\.xml$', sitemap,
#         {'sitemaps': {'cmspages': CMSSitemap}}),
# ]
#
# urlpatterns += i18n_patterns(
#     url(r'^admin/', include(admin.site.urls)),  # NOQA
#     url(r'^', include('cms.urls')),
# )
#
# # This is only needed when using runserver.
# if settings.DEBUG:
#     urlpatterns = [
#         url(r'^media/(?P<path>.*)$', serve,
#             {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
#         ] + staticfiles_urlpatterns() + urlpatterns


urlpatterns_main = [
    url(r'^sitemap\.xml$', sitemap,
        {'sitemaps': {'cmspages': CMSSitemap}}),
]

urlpatterns_main += [
    url(r'^admin/', include(admin.site.urls)),  # NOQA
    url(r'^', include('cms.urls')),
]

# This is only needed when using runserver.
# if settings.DEBUG:
#     urlpatterns = [
#         url(r'^minhlt/media/(?P<path>.*)$', serve,
#             {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
#         ] + staticfiles_urlpatterns() + urlpatterns_main


urlpatterns = [
    url(r'^minhlt/media/(?P<path>.*)$', serve,
        {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
    url(r'^minhlt/', include(urlpatterns_main))
    ] + staticfiles_urlpatterns()
