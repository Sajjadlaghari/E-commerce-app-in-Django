# Create your models here.
from django.db import models
from django.utils.text import slugify
from django.contrib.auth.models import User



class Category(models.Model):
    category_name  =  models.CharField(max_length=100)
    status           =  models.IntegerField(default=1)
    category_image = models.ImageField(upload_to='categories')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now_add=True)



class Product(models.Model):
    user_id                = models.ForeignKey(User, on_delete=models.CASCADE)
    category_id            = models.ForeignKey(Category, on_delete=models.CASCADE)
    product_name           = models.CharField(max_length=100)
    price                  =  models.IntegerField()
    product_description    = models.TextField()
    status                 =  models.IntegerField(default=1)
    featured_image         =  models.ImageField(upload_to='product',default='null')
    created_at             = models.DateTimeField(auto_now_add=True)
    updated_at             = models.DateTimeField(auto_now_add=True)


class ProductImage(models.Model):
    Product    = models.ForeignKey(Product,on_delete=models.CASCADE, related_name="product_images")
    image      = models.ImageField(upload_to="product")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now_add=True)

class Cart(models.Model):
    product  =  models.ForeignKey(Product, on_delete=models.CASCADE)
    user     =  models.ForeignKey(User,on_delete=models.CASCADE) 
    quantity =  models.FloatField(max_length=10)
    price    =  models.FloatField(max_length=10)


