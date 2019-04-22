# django-project-template

A project template for Django 2.0 based on the django-two-scoops project template.

## Using the template

```
python3 -m venv .env
source .env/bin/activate
pip install django
django-admin.py startproject --template=https://github.com/tom-henderson/django-template/archive/master.zip --extension=py,rst,html,json,md project_name
deactivate
rm -rf .env
```

## Running the project

```
python3 -m venv .env
source .env/bin/activate
pip install -r requirements/local.txt
npm install
python django_unifi/manage.py migrate
python django_unifi/manage.py collectstatic
python django_unifi/manage.py runserver
```
