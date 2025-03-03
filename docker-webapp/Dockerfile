# Use an official Python runtime as base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy only the necessary files (requirements.txt and app.py) from the docker-webapp folder
COPY docker-webapp/requirements.txt /app/
COPY docker-webapp/app.py /app/

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
