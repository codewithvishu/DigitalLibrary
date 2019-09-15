FROM python:3.7.4
# FROM python:3.7.4-alpine3.9
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
EXPOSE 8000
RUN python manage.py migrate
VOLUME /code
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]