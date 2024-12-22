# Use a specific Python version
FROM python:3.12-slim

# Avoid buffering for logs
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /code

# Copy and install requirements
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . /code/

# Default command
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
