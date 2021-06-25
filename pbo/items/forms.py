from django import forms

from .models import Barang

class BarangForm(forms.ModelForm):
	class Meta:
		model = Barang
		fields =[
			'id_items',
			'id_library',
			'category',
			'title',
			'author',
			'publisher',
			'year',
			'copies',
		]