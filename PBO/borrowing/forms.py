from django import forms

from .models import Peminjam

class PeminjamForm(forms.ModelForm):
	class Meta:
		model = Peminjam
		fields =[
			'subscriber_id',
			'borrow_date',
			'items_id',
			'return_date',
			'fee',
			
		]