FROM python:3.7-alpine
LABEL maintainer="stevjocen@outlook.ph"

ENV PYTHONBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /src
WORKDIR /src
COPY ./src /src

RUN adduser -D steven
USER steven
 
