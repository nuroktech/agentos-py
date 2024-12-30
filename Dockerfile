FROM python:3.11-slim

RUN apt-get update && apt-get install -y git

ENV PYTHONUNBUFFERED True

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN pip install --no-cache-dir -r requirements.txt

ENV PORT 8000

ENTRYPOINT ["bash", "./runtime/launch_kernel.sh"]