# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy your Python script and other necessary files into the container
COPY pg1.py /app
COPY requirements.txt /app  # If you have any Python dependencies

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose the Streamlit port (8501)
EXPOSE 8501

# Specify the command to run when the container starts
CMD ["streamlit", "run", "pg1.py"]
