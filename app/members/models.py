from django.contrib.auth.models import AbstractUser
from django.db import models


class User(AbstractUser):
    # 1. admin에서 이 필드를 수정할 수 있도록 설정
    #    members/admin.py
    # 2. ec2-deploy/.media/user 폴더에 업로드한 파일이 저장되도록 설정
    #    MEDIA_ROOT, MEDIA_URL

    # runserver후 admin들어가서
    # - 파일 올라가고
    # - 해당 폴더에 저장되고
    # - 링크클릭하면 정상적으로 나오는지 확인
    img_profile = models.ImageField(upload_to='user', blank=True)
