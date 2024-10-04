#!/bin/bash


docker exec -it ecomapp python manage.py makemigrations ecomapp; 
docker exec -it ecomapp python manage.py migrate;