# from django.db import models
# # from base.models import BaseModel
# from django.contrib.auth.models import User
# # Create your models here.

# class Profile(BaseModel):
#     user                = models.OneToOneField(User,on_delete=models.CASCADE, related_name="profile")
#     is_email_verifiled  = models.BooleanField(default=False)
#     email_token         = models.CharField(max_length=100)
#     profile_image       = models.ImageField(upload_to='profile')