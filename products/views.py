from django.shortcuts import render
from .models import Product
from products.models import Product

# Create your views here.

def get_products(request, slug):

    context = {'products':Product.objects.all()},
    return render(request,'product/product.html')

def ProductDetailed(request,id):


    context = {'product':Product.objects.get(id=id)}
    products = Product.objects.get(id=id)
   
   
    print(products.user_id)

    return render(request,'product/product-detailed.html',context)