# 이미지 빌드(ec2-deploy폴더에서 실행)
#  docker build -t ec2-deploy -f Dockerfile .
FROM        ubuntu:18.04
MAINTAINER  dev@lhy.kr

# 패키지 업그레이드, Python3설치
RUN         apt -y update
RUN         apt -y dist-upgrade
RUN         apt -y install python3-pip

# Nginx, uWSGI 설치 (WebServer, WSGI)
RUN         apt -y install nginx
RUN         pip3 install uwsgi

# docker build할때의 PATH에 해당하는 폴더의 전체 내용을
#  Image의 /srv/project/폴더 내부에 복사
COPY        ./   /srv/project
WORKDIR     /srv/project
RUN         pip3 install -r requirements.txt

# 프로세스를 실행할 명령
WORKDIR     /srv/project/app
CMD         python3 manage.py runserver 0:8000
