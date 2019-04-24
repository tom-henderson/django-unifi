FROM alpine:3.9

RUN apk --no-cache add \
    git \
    python3 \
    npm

COPY django_unifi /opt/django_unifi/
COPY requirements.txt /opt/
COPY package*.json /opt/

RUN pip3 install -r /opt/requirements.txt
RUN cd /opt && npm ci

RUN python3 /opt/django_unifi/manage.py migrate --noinput
RUN python3 /opt/django_unifi/manage.py collectstatic --noinput

EXPOSE 80
CMD ["python3", "/opt/django_unifi/manage.py", "runserver", "0.0.0.0:80"]