#!/bin/sh

echo "Aguardando Postrgres..."

while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
    sleep 0.1
done

echo "PostgresSQL inicializado"

python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:8000

exec "$@"
