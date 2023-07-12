# Use an official Python runtime as the base image
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the project dependencies
RUN pip install -r requirements.txt

# Copy the project code to the working directory
COPY . .

# Expose the port your Django app will run on
EXPOSE 8000

# Specify the command to run your Django app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
