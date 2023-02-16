from django.contrib import admin
from django.urls import path, include
from admin import views
from django.conf import settings
from django.conf.urls.static import static
from admin import views

urlpatterns = [
    path('home', views.adminHome, name="admin-home"),
    path('add-new-category', views.AddNewCategory, name="add-new-category"),
    path('add-new-product', views.AddProduct, name="add-new-product"),
    path('view-products', views.ViewProducts, name="view-products"),
    path('view-all-categories', views.ViewAllCategories, name="view-all-categories"),
    path('product-status/<id>', views.ChangeProductStatus, name='product-status'),
    path('logout',views.custom_logout,name="logout")
    
]