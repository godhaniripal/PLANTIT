FROM python:3.8-slim-buster

WORKDIR /plant2

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . . 

EXPOSE 8000  

CMD python manage.py runserver
