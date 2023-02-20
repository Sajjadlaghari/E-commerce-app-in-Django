from django.shortcuts import render
from products.models import Product, Cart

# Create your views here.


def index(request):


    current_user = request.user

    print(current_user.id)
    products = Product.objects.all()
    carts = Cart.objects.filter(user_id = request.user.id).count()


    return render(request,'home/index.html',{'products':products,'carts':carts})