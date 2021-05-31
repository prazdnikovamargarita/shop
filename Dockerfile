FROM python:3.8

RUN pip3 install django
RUN pip3 install djangorestframework
RUN pip3 install markdown
RUN pip3 install django-filter
RUN pip3 install pytz



COPY ./myshop /app

WORKDIR /app

RUN ls -la

EXPOSE 8000 

CMD python3 manage.py runserver 0.0.0.0:8000
