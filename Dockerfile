FROM python:3.7

RUN apt-get update && apt-get install -y \
		gcc \
		gettext \
		postgresql-client libpq-dev \
		sqlite3 \
		curl    \
--no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY build/install/pythonapp/ .
RUN pip install -r requirements.txt

EXPOSE 8000
HEALTHCHECK CMD curl -f http://0.0.0.0:8000/ || exit 1

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]