FROM python:3.10

RUN apt install -y libpq-dev gcc

RUN mkdir app
WORKDIR /app

COPY . .

RUN pip install -r ./requirements.txt

CMD [ "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000" ]
