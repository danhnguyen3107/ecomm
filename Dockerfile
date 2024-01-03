FROM python:3.10.6-buster

ENV PYTHONUNBUFFERED=1

# WORKDIR /django

# RUN apt-get update && \
#     apt-get install -y libpq-dev 

# set work directory
WORKDIR /var/app

# install dependencies
# RUN pip install --upgrade pip
COPY ./requirements.txt /var/app
RUN pip install -r requirements.txt


COPY . .

EXPOSE 8000  

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]