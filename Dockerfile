FROM python:3.6-jessie
ENV PYTHONUNBUFFERED 1
WORKDIR /code
COPY requirements.txt /code/
RUN apt-get update && apt-get upgrade --yes
RUN pip install -r requirements.txt
COPY . /code/