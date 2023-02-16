from django.contrib import admin
from django.urls import path
from accounts import  views 

from django.conf.urls.static import static

urlpatterns = [

    path("login",views.login_page),
    path("register",views.register),
    path("user_register",views.user_register)

]
