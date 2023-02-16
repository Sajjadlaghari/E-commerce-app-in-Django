from django.db import models
from django.contrib.auth.models import User



class Category(models.Model):

    Category_name = models.CharField(max_length=120, null=True)
    Category_image = models.ImageField(upload_to='category')
    category_status = models.IntegerField(default=1)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

class Product(models,models):

    user_id = models.ForeignKey(User, on_delete=models.CASCADE)
    category_id = models.ForeignKey(Category, on_delete=models.CASCADE)
    product_name        = models.CharField(max_length=120,null=True)
    product_price        = models.IntegerField(max_length=120,null=True)
    product_description = models.TextField(null=True)
    product_status = models.IntegerField(default=1)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

