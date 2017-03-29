FROM python:2.7

WORKDIR /app/

COPY . .
ENV SECRET_KEY=K89Zz9H0pj2e8xCX87ytc7PSqx2s4JXy ALLOWED_HOSTS=* \
    DATABASE_URL=postgres://guiaacherapido_django:guiaacherapido_django@db/guiaacherapido_django
RUN pip install -r requirements.txt && python manage.py collectstatic --noinput
