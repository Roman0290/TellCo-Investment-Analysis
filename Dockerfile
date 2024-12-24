# Use the official Python image
FROM python:3.12

# Set the working directory inside the container
WORKDIR /scripts

# Copy the load_data.py script into the container
ADD load_data.py /scripts/load_data.py

# Install the required Python packages
RUN pip install requests beautifulsoup4

# Specify the command to run the application
CMD ["python", "./load_data.py"]
