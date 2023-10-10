# The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM node:18

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first


# Set the working directory to /drf
# NOTE: all the directives that follow in the Dockerfile will be executed in
# that directory.
WORKDIR /app_maks
ENV PATH /app_maks/node_modules/.bin:$PATH
COPY package.json /app_maks/package.json
# Install any needed packages specified in requirements.txt
#RUN npm install

COPY . /app_maks
CMD npm run serve
#EXPOSE 8080

#CMD python manage.py makemigrations && python manage.py migrate && python manage.py runserver 0.0.0.0:8000
# CMD ["%%CMD%%"]