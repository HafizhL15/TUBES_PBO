from django.shortcuts import render, redirect

# Create your views here.

from .models import Peminjam
from .forms import PeminjamForm
from django.db import connection
from itertools import chain

def update(request,update_id):
	akun_update = Peminjam.objects.get(id=update_id)

	data = {
		'subscriber_id'		: akun_update.subscriber_id,
		'borrow_date'		: akun_update.borrow_date,
		'items_id'			: akun_update.items_id,
		'return_date'		: akun_update.return_date,
		'fee'				: akun_update.fee,
	}
	akun_form = PeminjamForm(request.POST or None, initial=data, instance=akun_update)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('borrowing:list')

	context = {
		"page_title":"Update Data",
		"akun_form":akun_form,
	}

	return render(request,'borrowing/create.html',context)


def delete(request,delete_id):
	Peminjam.objects.filter(id=delete_id).delete()
	return redirect('borrowing:list')

def create(request):
	akun_form = PeminjamForm(request.POST or None)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('borrowing:list')

	context = {
		"page_title":"Tambah Data",
		"akun_form":akun_form,
	}

	return render(request,'borrowing/create.html',context)

def list(request):
	semua_akun = Peminjam.objects.all()

	context = {
		'page_title':'Borrowing',
		'semua_akun':semua_akun,
	}

	return render(request,'borrowing/list.html',context)
