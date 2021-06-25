from django.http import HttpResponse
from django.shortcuts import render
from django.db import connection
from borrowing.models import Peminjam
from django.db import connection
from itertools import chain

def index(request):
	return render(request,'index.html')

def laporan(request):
	cursor=connection.cursor()
	cursor.execute("select borrowing_peminjam.subscriber_id_id, borrowing_peminjam.borrow_date, borrowing_peminjam.items_id_id, borrowing_peminjam.return_date, borrowing_peminjam.fee from borrowing_peminjam where DATEDIFF (borrowing_peminjam.return_date, borrowing_peminjam.borrow_date) > 21")
	result=cursor.fetchall()

	context = {
		'page_title' : 'Laporan Daftar Pinjaman yang sudah lewat waktu pengembalian',
		'daftars' : result,
	}

	return render(request,'laporan.html',context)



from django.shortcuts import render
from io import BytesIO
from django.http import HttpResponse
from django.template.loader import get_template
from django.views import View
from xhtml2pdf import pisa

def render_to_pdf(template_src, context_dict={}):
	template = get_template(template_src)
	html  = template.render(context_dict)
	result = BytesIO()
	pdf = pisa.pisaDocument(BytesIO(html.encode("ISO-8859-1")), result)
	if not pdf.err:
		return HttpResponse(result.getvalue(), content_type='application/pdf')
	return None

cursor=connection.cursor()
cursor.execute("select borrowing_peminjam.subscriber_id_id, borrowing_peminjam.borrow_date, borrowing_peminjam.items_id_id, borrowing_peminjam.return_date, borrowing_peminjam.fee from borrowing_peminjam where DATEDIFF (borrowing_peminjam.return_date, borrowing_peminjam.borrow_date) > 21")
result=cursor.fetchall()

data = {
	'page_title' : 'Laporan Daftar Pinjaman yang sudah lewat waktu pengembalian',
	'daftars' : result,
}


#Opens up page as PDF
class ViewPDF(View):
	def get(self, request, *args, **kwargs):

		pdf = render_to_pdf('pdf_template.html', data)
		return HttpResponse(pdf, content_type='application/pdf')


#Automaticly downloads to PDF file
class DownloadPDF(View):
	def get(self, request, *args, **kwargs):
		
		pdf = render_to_pdf('pdf_template.html', data)

		response = HttpResponse(pdf, content_type='application/pdf')
		filename = "Invoice_%s.pdf" %("12341231")
		content = "attachment; filename='%s'" %(filename)
		response['Content-Disposition'] = content
		return response


