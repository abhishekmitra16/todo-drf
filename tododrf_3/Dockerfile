FROM python:3.8.5
ENV PYTHONBUFFERED 1
WORKDIR /
COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt

COPY . /


CMD ["python","manage.py","makemigrations"]
CMD ["python","manage.py","migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8002"]

