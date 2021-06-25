from django.conf.urls import url, include
from django.contrib import admin
from . import views

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
]
