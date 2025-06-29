# Use an official Python image as a base
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy only the required files to keep the image clean
COPY requirements.txt ./
COPY main.py ./

# Install FastAPI and Uvicorn
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 for the application
EXPOSE 8000

# Start the FastAPI application with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]