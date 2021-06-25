from django.db import models
from library.models import Perpustakaan

# Create your models here.

class Barang(models.Model):
	id 					= models.IntegerField()
	id_items			= models.IntegerField(max_length=7, primary_key=True)
	id_library	  		= models.ForeignKey(Perpustakaan, on_delete=models.CASCADE)
	category 			= models.CharField(max_length=100)
	title				= models.CharField(max_length=100)
	author				= models.CharField(max_length=100)
	publisher			= models.CharField(max_length=100)
	year				= models.CharField(max_length=100)
	copies				= models.CharField(max_length=100)

	def __str__(self):
		return "{}".format(self.id_items)