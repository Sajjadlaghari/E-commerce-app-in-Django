from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import  User
from django.contrib import messages
from  products.models import Category, Product
from django.core.files.storage import FileSystemStorage
from django.contrib.auth import logout


@login_required(login_url='login')
def adminHome(request):
    return render(request,'admin/index.html')

def AddNewCategory(request):
    
    if request.method == "POST":
        user_id   = request.POST.get('user_id')
        user = User.objects.get(id=user_id)

        if len(request.FILES) != 0:
            upload = request.FILES['image']
            fss = FileSystemStorage()
            file = fss.save(upload.name, upload)
            file_url = fss.url(file)


        category=Category()
        category.category_name  = request.POST.get('title')
        result = category.save()
        messages.success(request, "Category Added Successfully.")
        return redirect('/admin/view-all-categories')


    return render(request,'admin/add-new-category.html')

def ViewAllCategories(request):

    context = {"categories":Category.objects.all()}
    return render(request,'admin/view-categories.html',context)

def EditCategory(request, id):
    category = Category.objects.get(id = id)
  
    context = {'category':category} 

    return render(request,'admin/update-category.html',context)

def UpdateCategory(request):

     if request.method == "POST":

        id       = request.POST.get('id') 
        title       = request.POST.get('name')
       
        category =  Category.objects.get(id = id)
       
        category.category_name = title 
        category.save()
       
        messages.success(request, "Category Updated Successfully.")
        return redirect('/admin/view-all-categories')




def ChangeCategoryStatus(request,id):
    category = Category.objects.get(id=id)

    if(category.status == 1):
        category.status = 0
    else:
        category.status = 1

    category.save()

    messages.success(request , "Category status updated Successfully.")
    return redirect('/admin/view-all-categories')

def DeleteCategory(request):

    if request.method == 'POST':

        id = request.POST.get('category_id')

        Category.objects.filter(id=id).delete()
        
        messages.success(request , "Category Deleted Successfully.")
        return redirect('/admin/view-all-categories')



def AddProduct(request):
    
    if request.method == "POST":

        upload = request.FILES['image']
        fss = FileSystemStorage()
        file = fss.save(upload.name, upload)
        file_url = fss.url(file)

        title       = request.POST.get('title')
        price       = request.POST.get('price')
        description = request.POST.get('description')
        categori_id       = request.POST.get('categori_id')
        user_id       = request.POST.get('user_id')

        category =  Category.objects.get(id = categori_id)
        user     =  User.objects.get(id = user_id)


        product = Product()

        product.product_name        = title
        product.price               = price
        product.product_description =  description
        product.user_id             = user
        product.category_id         = category
        product.featured_image      = file_url
    
        product.save()
        messages.success(request, "Products Added Successfully.")
        return redirect('/admin/view-products')


    context = {"categories":Category.objects.all()}    
    return render(request,'admin/add-new-product.html',context)

def ViewProducts(request):
    product = {'products':Product.objects.all()}   
    context = {"categories":Category.objects.all()}   

    return render(request,'admin/view-products.html',product)

def ChangeProductStatus(request, id):

    product = Product.objects.get(id=id)

    if(product.status == 1):
        product.status = 0
    else:
        product.status = 1
    
    product.save()

    messages.success(request, "Products status updated Successfully.")
    return redirect('/admin/view-products')

def EditProduct(request, id):

    product = Product.objects.get(id = id)
  
    categories = Category.objects.all()

    context = {'product':product,
                'categories':categories
            } 

    return render(request,'admin/update-product.html',context)



def DeleteProduct(request):

    if request.method == 'POST':

        id = request.POST.get('product_id')

        Product.objects.filter(id=id).delete()
        messages.success(request, "Product deleted Successfully.")
        return redirect('/admin/view-products')
def UpdateProduct(request):
     if request.method == "POST":

    
        id       = request.POST.get('id')
        
        title       = request.POST.get('title')

        price       = request.POST.get('price')
        description = request.POST.get('description')
        categori_id       = request.POST.get('categori_id')
       
        category =  Category.objects.get(id = categori_id)
       

        product = Product.objects.get(id= id)

        product.product_name        = title
        product.price               = price
        product.product_description = description
        product.category_id         = category
       
        product.save()
       
        messages.success(request, "Products Updated Successfully.")
        return redirect('/admin/view-products')


@login_required
def custom_logout(request):
    logout(request)
    messages.info(request, "Logged out successfully!")
    return redirect("/accounts/login")

