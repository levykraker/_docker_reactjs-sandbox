FROM alpine:latest
WORKDIR /opt/project

# Install the application dependencies
RUN apk add --update nodejs npm
RUN npm i -g npx

# Expose port 3000 
EXPOSE 3000

# RUN ReactJS App 
CMD npm install &&  npm start