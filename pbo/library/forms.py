from django import forms

from .models import Perpustakaan

class PerpustakaanForm(forms.ModelForm):
	class Meta:
		model = Perpustakaan
		fields =[
			'id_library',
			'name',
		]