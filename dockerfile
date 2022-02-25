#FROM python:slim-buster
FROM python:buster

WORKDIR /app

COPY . /app/

RUN /app/odbcinstall.sh

RUN pip install pyodbc

ENTRYPOINT [ "python", "test.py" ]