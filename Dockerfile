FROM python:2.7

WORKDIR /app/

COPY . .
ENV DATABASE_URL=postgres://project_base:project_base@db/project_base
RUN pip install -r requirements.txt && python manage.py collectstatic --noinput
