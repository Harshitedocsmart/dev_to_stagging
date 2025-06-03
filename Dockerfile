# Dockerfile
FROM python:3.11

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Set environment variable and run the server
ENV PYTHONPATH=/app 
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
