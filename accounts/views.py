from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponseRedirect

# Create your views here.


def login_page(request):
    
    if request.method == "POST":

        email = request.POST.get('email')
        password = request.POST.get('password')

        user_obj = User.objects.filter(username = email)

        if  not user_obj.exists():
            messages.warning(request,'Account not found')
            return HttpResponseRedirect(request.path_info)

        user_obj = authenticate(username = email, password = password)

       

        if user_obj:
            login(request, user_obj)
            return redirect('/admin/home')

        if  user_obj:
            messages.warning(request,'Your account not verified')
            return HttpResponseRedirect(request.path_info)


        messages.warning(request,'Invalid credentials')
        return HttpResponseRedirect(request.path_info)

    return render(request,'accounts/login.html')

def register(request):

    if request.method == "POST":
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        email = request.POST.get('email')
        password = request.POST.get('password')

        user_obj = User.objects.filter(username=email).exists()
            
        if user_obj:
            messages.warning(request,'Email already Taken')
            return HttpResponseRedirect(request.path_info)

        user_obj = User.objects.create(first_name = first_name, last_name = last_name, email = email, username = email)
        user_obj.set_password(password)
        user_obj.save()
        messages.warning(request,'Email has been sent on your email')
        return render(request,'accounts/register.html')
       
    return render(request,'accounts/register.html')

def user_register(request):
        if request.method == "POST":
            first_name = request.POST.get('first_name')
            last_name = request.POST.get('last_name')
            email = request.POST.get('email')
            password = request.POST.get('password')

            user_obj = User.objects.filter(username=email).exists()
            
            if user_obj:
                messages.warning(request,'Email already Taken')
                return HttpResponseRedirect(request.path_info)

            user_obj = User.objects.create(first_name = first_name, last_name = last_name, email = email, username = email)
            user_obj.set_password(password)
            user_obj.save()
            messages.warning(request,'Email has been sent on your email')
            return HttpResponseRedirect(request.path_info)
        
        return render(request,'accounts/register.html')