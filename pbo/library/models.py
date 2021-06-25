from django.db import models

# Create your models here.

class Perpustakaan(models.Model):
	id 			= models.IntegerField()
	id_library	= models.IntegerField(max_length=7,primary_key=True)
	name 		= models.CharField(max_length=100)
	
	def __str__(self):
		return "{}".format(self.id_library)