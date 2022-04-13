FROM python:3.7.3
LABEL MAINTAINER nbaynham

WORKDIR /app 

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY movies.json main.py ./

CMD python main.py
