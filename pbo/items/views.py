from django.shortcuts import render, redirect

# Create your views here.

from .models import Barang
from .forms import BarangForm

def update(request,update_id):
	akun_update = Barang.objects.get(id=update_id)
	
	data = {
		'id_items'		: akun_update.id_items,
		'id_library'	: akun_update.id_library,
		'category'		: akun_update.category,
		'title'			: akun_update.title,
		'author'		: akun_update.author,
		'publisher'		: akun_update.publisher,
		'year'			: akun_update.year,
		'copies'		: akun_update.copies,
	}
	akun_form = BarangForm(request.POST or None, initial=data, instance=akun_update)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('items:list')

	context = {
		"page_title":"Update Data",
		"akun_form":akun_form,
	}

	return render(request,'items/create.html',context)


def delete(request,delete_id):
	Barang.objects.filter(id=delete_id).delete()
	return redirect('items:list')

def create(request):
	akun_form = BarangForm(request.POST or None)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('items:list')

	context = {
		"page_title":"Tambah Data",
		"akun_form":akun_form,
	}

	return render(request,'items/create.html',context)

def list(request):
	semua_akun = Barang.objects.all()

	context = {
		'page_title':'Items',
		'semua_akun':semua_akun,
	}

	return render(request,'items/list.html',context)