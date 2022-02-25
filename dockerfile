#FROM python:slim-buster
FROM python:buster

WORKDIR /app

COPY . /app/

RUN /app/odbcinstall.sh

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "test.py" ]
