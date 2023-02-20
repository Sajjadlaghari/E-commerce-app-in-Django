from django.shortcuts import render
from .models import Product
from django.http import HttpResponseRedirect
from products.models import Product

# Create your views here.

def get_products(request, slug):

    context = {'products':Product.objects.all()},
    return render(request,'product/product.html')

def ProductDetailed(request,id):


    context = {'product':Product.objects.get(id=id)}
    products = Product.objects.get(id=id)
   
    return render(request,'product/product-detailed.html',context)

def ProductAddToCart(request):

    return  redirect('home')

     
    if request.method == "POST":
        product_id = request.POST.get('product_id')
        user_id    = request.POST.get('user_id')
        price      = request.POST.get('product_price')

       
        print("#######################################################################################################")
        product_id("ProductId",product_id)
        # product_id("Price",price)
        # product_id("user_Id",user_id)

        return  HttpResponseRedirect(request.path_info)

