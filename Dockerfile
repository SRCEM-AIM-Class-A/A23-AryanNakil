# Use a lightweight Python image
FROM python:3.11-alpine

# Set working directory inside the container
WORKDIR /app

# Copy requirements file
COPY requirements.txt /app/requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy project files into the container
COPY . /app

# Expose port 5000
EXPOSE 5000

# Command to run the application
ENTRYPOINT ["python"]
CMD ["app.py"]
