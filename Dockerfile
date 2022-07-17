FROM python:3.7.3-stretch
## Step 1:
# Create a working directory
WORKDIR /the/workdir/path

## Step 2:  /home/mbaapoh/UDACITY/DEVOPS/PROJECCT4/DevOps_Microservices/project-ml-microservice-kubernetes
# Copy source code to working directory
COPY . /the/workdir/path/
## Step 3:
# Install packages from requirements.txt
#RUN pip freeze > requirements.txt
#COPY requirements.txt /the/workdir/path/
RUN pip install  --no-cache-dir -r ./requirements.txt
# hadolint ignore=DL3013

## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
CMD ["python" , "app.py" ]

