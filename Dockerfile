# Use official lightweight Python image (smaller size)
FROM python:3.11.15-slim-trixie

# Set working directory inside container
WORKDIR /app

# Copy all files from current directory to container
COPY . .

# Install dependencies from requirements.txt
RUN pip install -r requirements.txt

# Expose port 80 (app will run on this port)
EXPOSE 80

# Run the application when container starts
CMD ["python", "run.py"]
