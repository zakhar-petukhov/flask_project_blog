FROM python:3.6

RUN mkdir /flask_project_blog
COPY . /flask_project_blog

WORKDIR /flask_project_blog/app

RUN pip install -r ../requirements.txt

ENV FLASK_ENV="flask_project_blog"

EXPOSE 5000

ENTRYPOINT ["python", "manage.py", "runserver", "--host", "0.0.0.0"]

