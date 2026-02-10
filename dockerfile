FROM python:3.12-slim
# setting up the working directory
WORKDIR /app
# copy the file to the working directory
COPY . /app
#install the dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Make the port 5000 available to the world outside this container
EXPOSE 5000
# Define environment variable
ENV FLASK_APP=app.py

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]


