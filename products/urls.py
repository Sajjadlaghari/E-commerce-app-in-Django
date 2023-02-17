from django.contrib import admin
from django.urls import path
from products import views
from django.conf.urls.static import static

urlpatterns = [
    path('<id>',views.ProductDetailed, name="product-detail"),

]