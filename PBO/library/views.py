from django.shortcuts import render, redirect

# Create your views here.

from .models import Perpustakaan
from .forms import PerpustakaanForm

def update(request,update_id):
	akun_update = Perpustakaan.objects.get(id=update_id)
	
	data = {
		'id_library' 	: akun_update.id_library,
		'name'			: akun_update.name,
	}
	akun_form = PerpustakaanForm(request.POST or None, initial=data, instance=akun_update)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('library:list')

	context = {
		"page_title":"Update Data",
		"akun_form":akun_form,
	}

	return render(request,'library/create.html',context)


def delete(request,delete_id):
	Perpustakaan.objects.filter(id=delete_id).delete()
	return redirect('library:list')

def create(request):
	akun_form = PerpustakaanForm(request.POST or None)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('library:list')

	context = {
		"page_title":"Tambah Data",
		"akun_form":akun_form,
	}

	return render(request,'library/create.html',context)

def list(request):
	semua_akun = Perpustakaan.objects.all()

	context = {
		'page_title':'Library',
		'semua_akun':semua_akun,
	}

	return render(request,'library/list.html',context)