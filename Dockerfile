# we defined the base image first
FROM python:3.9-slim-bullseye  
# this is the working directory in the docker where everythong will be present 
WORKDIR /app

COPY requirement.txt .
#run the command to install everything inside the requirement.txt
RUN pip3 install --no-cache-dir -r requirement.txt 
#copy the code from app.py to inside the image
COPY . .
#set the enviornment variable
ENV FLASK_RUN_HOST=0.0.0.0
#expose the port 
EXPOSE 5000  
#run the command to start the flask app
CMD [ "flask","run" ]
