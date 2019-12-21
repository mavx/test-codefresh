FROM python:3.6-slim

ENV APP_HOME /app
WORKDIR $APP_HOME

# Utilise Docker cache to reduce build times, especially as dependencies
# do not change as frequently as the source code
COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY src ./

ENV PYTHONPATH $APP_HOME
ENV GUNICORN_CMD_ARGS "-b :5000"

EXPOSE 5000

ENTRYPOINT ["gunicorn",  "main:app"]
