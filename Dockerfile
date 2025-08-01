FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements 
COPY requirements.txt .

# Cài đặt Dependency
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code

COPY app.py .

COPY jupyter-notebook-model/model_ml.joblib /app/
# Copy model_ml.joblib file vào COntainer

# Expose port
EXPOSE 5000



# Run the application
CMD ["python", "app.py"]