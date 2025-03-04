# Use an official Python runtime as base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install any dependencies
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the rest of the application files into the container
COPY app.py /app/

# Expose the port the app runs on (if applicable)
EXPOSE 5000

# Command to run your application
CMD ["python", "app.py"]
