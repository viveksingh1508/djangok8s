#!/bin/bash

SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"vivek@singh.com"}
cd /app/

# /opt/venv/bin/python manage.py migrate --noinput
echo "Applying migrations..."
/opt/venv/bin/python manage.py migrate


echo "Creating superuser..."
/opt/venv/bin/python manage.py createsuperuser --noinput || true
# /opt/venv/bin/python manage.py createsuperuser --email $SUPERUSER_EMAIL
# --noinput || true