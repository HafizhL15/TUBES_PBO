from django.db import models
from subscribers.models import Pelanggan
from items.models import Barang

# Create your models here.

class Peminjam(models.Model):
	id 					= models.IntegerField(primary_key=True)
	subscriber_id	  	= models.ForeignKey(Pelanggan, on_delete=models.CASCADE)
	borrow_date 		= models.DateField(max_length=20)
	items_id			= models.ForeignKey(Barang, on_delete=models.CASCADE)
	return_date			= models.DateField(max_length=20, blank=True, null=True)
	fee					= models.IntegerField(blank=True, null=True)

	def __str__(self):
		return "{}".format(self.subscriber_id)