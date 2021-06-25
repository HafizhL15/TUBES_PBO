from django.shortcuts import render, redirect

# Create your views here.

from .models import Pelanggan
from .forms import PelangganForm

def update(request,update_id):
	akun_update = Pelanggan.objects.get(id=update_id)
	
	data = {
		'subscriber_id'	: akun_update.subscriber_id,
		'tipe'			: akun_update.tipe,
		'name'			: akun_update.name,
		'address'		: akun_update.address,
		'phone'			: akun_update.phone,
		'email'			: akun_update.email,
	}
	akun_form = PelangganForm(request.POST or None, initial=data, instance=akun_update)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('subscribers:list')

	context = {
		"page_title":"Update Data",
		"akun_form":akun_form,
	}

	return render(request,'subscribers/create.html',context)


def delete(request,delete_id):
	Pelanggan.objects.filter(id=delete_id).delete()
	return redirect('subscribers:list')

def create(request):
	akun_form = PelangganForm(request.POST or None)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('subscribers:list')

	context = {
		"page_title":"Tambah Data",
		"akun_form":akun_form,
	}

	return render(request,'subscribers/create.html',context)

def list(request):
	semua_akun = Pelanggan.objects.all()

	context = {
		'page_title':'Subscribers',
		'semua_akun':semua_akun,
	}

	return render(request,'subscribers/list.html',context)