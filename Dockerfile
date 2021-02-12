FROM python:3.8.5
ENV PYTHONBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8000
COPY . /app

CMD ["python","manage.py","migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

