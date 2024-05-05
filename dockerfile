FROM node:14

WORKDIR /resume/resume/src/

#copy package.json to working directory

COPY package*.json ./

# install dependencies
RUN npm install

#copy the rest of the application code to the working dir
COPY . .

#expose the post the app runs on
EXPOSE 3000

# command to run the application
CMD [ "node","app.js" ]