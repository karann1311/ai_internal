# Use a lightweight Python image
FROM python:3.11.2

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Train model before serving
RUN python train_model.py

# Expose Flask port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
