#!/usr/bin/env bash

set -e

PROJECT_BASE_PATH='/usr/local/apps/Build-Backend-REST-API-Python-Django-Udemy'

git pull
$PROJECT_BASE_PATH/env/bin/python manage.py migrate
$PROJECT_BASE_PATH/env/bin/python manage.py collectstatic --noinput
supervisorctl restart profiles_api

echo "DONE! :)"
