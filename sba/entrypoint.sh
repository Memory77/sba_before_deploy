#!/bin/sh

# Effectuer les migrations
echo "Effectuer les migrations de la base de données..."
python manage.py makemigrations && python manage.py migrate

echo "Collecter les fichiers statics..."
python manage.py collectstatic --noinput

python manage.py runserver 0.0.0.0:8000 
# ou pour un serveur de production, utilisez gunicorn ou un autre serveur WSGI :
# gunicorn myproject.wsgi:application --bind 0.0.0.0:8001, l'installer avant