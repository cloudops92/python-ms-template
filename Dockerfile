FROM django:latest
WORKDIR /usr/src/app
COPY build/install/pythonapp/ .
RUN pip install -r requirements.txt
EXPOSE 8080
HEALTHCHECK CMD curl -f http://localhost:8080/actuator/health/ || exit 1
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]