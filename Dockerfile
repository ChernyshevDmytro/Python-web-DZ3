FROM python:3.10.1-buster

WORKDIR D:\учеба\goit-python\Python_web\DZ3\Python-web-DZ3

RUN pip install pipenv

COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock

RUN pipenv install --system --deploy


CMD python DZ3.py

COPY . .