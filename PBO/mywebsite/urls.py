from django.conf.urls import url, include
from django.contrib import admin
from . import views

from django.conf import settings
from django.conf.urls.static import static

from django.views.static import serve
from django.conf.urls import url

urlpatterns = [
	url(r'^library/', include('library.urls',namespace='library')),
	url(r'^items/', include('items.urls',namespace='items')),
	url(r'^subscribers/', include('subscribers.urls',namespace='subscribers')),
	url(r'^borrowing/', include('borrowing.urls',namespace='borrowing')),
    url(r'^admin/', admin.site.urls),
    url(r'^$', views.index),
    url(r'^laporan/', views.laporan),
    url(r'^pdf_view', views.ViewPDF.as_view()),
    url(r'^pdf_download', views.DownloadPDF.as_view()),

    url(r'^media/(?P<path>.*)$', serve,{'document_root': settings.MEDIA_ROOT}), 
    url(r'^static/(?P<path>.*)$', serve,{'document_root': settings.STATIC_ROOT}),
]
