from django.shortcuts import render
from .models import Product

# Create your views here.

def get_products(request, slug):

    context = {'products':Product.objects.all()},
    return render(request,'product/product.html')