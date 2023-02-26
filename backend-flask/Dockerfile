FROM python:3.10-slim-buster

# This will be the root file inside container where all commands will run
WORKDIR /backend-flask

# copy requirements.txt from outside container to inside container
# nd install the librabries to setup backend
# RUN is a command that runs during the setup process for container, to configure the container to run application
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
# to install curl in the container environment 
RUN apt-get update && apt-get install -y curl

# copy everything from main directory to inside container main directory(i.e above WORKDIR)
COPY . .

# env for the container nd will remain set when container is runnning
ENV FLASK_ENV=development

EXPOSE ${PORT}

# command to run the backend
# CMD commands run to start to the application inside container after the container is setup
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=4567"]