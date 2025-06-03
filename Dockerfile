FROM python:3.11

# Set working directory inside the container
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files into the container
COPY . .

# Set PYTHONPATH so Python knows where to find the project
ENV PYTHONPATH=/app 

# Run the Django development server
CMD ["python", "dev_2_stagging/myproject/manage.py", "runserver", "0.0.0.0:8000"]
