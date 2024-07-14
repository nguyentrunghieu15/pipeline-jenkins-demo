FROM python:alpine3.19

WORKDIR /app

COPY . .

RUN pip install Flask

CMD ["sh","-c","flask --app /app/app.py run --host=0.0.0.0"]