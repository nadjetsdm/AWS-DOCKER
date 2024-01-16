FROM python:3.9
ENV APP_HOME /app
WORKDIR $APP_HOME
RUN apt-get update
COPY requirements .
RUN pip install -r requirements
COPY . .
CMD ["python3", "app.py"]