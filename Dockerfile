# set base image (host OS)
FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential

# set the working directory in the container
WORKDIR /code

# copy the dependencies file to the working directory
COPY    hello.py .
COPY requirements.txt .
# install dependencies
RUN pip3 install Flask
RUN pip3 install -r requirements.txt
# command to run on container start
ENTRYPOINT ["python3"]
CMD [ "hello.py" ]