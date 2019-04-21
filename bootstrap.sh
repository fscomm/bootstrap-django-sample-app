git clone https://github.com/kirpit/django-sample-app.git &&
git clone https://github.com/fiss04/bootstrap-django-sample-app.git &&
cp bootstrap-django-sample-app/{Dockerfile,docker-compose.yml} django-sample-app &&
cp bootstrap-django-sample-app/local.py django-sample-app/projectname/settings &&
cd django-sample-app &&
sed -i 's/{{ project_name }}/projectname/g' projectname/settings/*.py &&
sed -i 's/{{ project_name }}/projectname/g' projectname/*.py &&
sudo docker-compose build &&
sudo docker-compose up -d db &&
sudo docker-compose run --rm django_app python manage.py migrate &&
sudo docker-compose up -d &&

echo "Thats all! Point your browser to http://localhost:8000" ;
