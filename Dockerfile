FROM python:3.9-slim

WORKDIR /app

# If you have a requirements.txt file, copy it first
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your code into /app
COPY . /app

# Expose port 5000 (inside the container)
EXPOSE 5000

# The command to start your Flask app
CMD ["python", "app.py"]
