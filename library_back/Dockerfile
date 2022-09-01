FROM python:3

WORKDIR /library_back

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update 
RUN apt install -y netcat

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./entrypoint.sh .
COPY . .
RUN chmod +x /library_back/entrypoint.sh

ENTRYPOINT ["/library_back/entrypoint.sh"]