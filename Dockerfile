# Use the official Python image with slim-buster
FROM python:3.8-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy your application code into the container
COPY requirements.txt requirements.txt

# Install any application dependencies (e.g., using pip)
RUN pip3 install -r requirements.txt

COPY . . 

EXPOSE 8000
# Specify the command to run when the container starts
CMD python manage.py runserver

