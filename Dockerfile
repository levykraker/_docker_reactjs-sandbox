FROM alpine:latest
WORKDIR /opt/project

# Install the application dependencies
RUN apk add --update nodejs npm
RUN apk add --update ffmpeg
RUN apk add --no-cache vips-dev
RUN apk add --no-cache python3
RUN apk add --no-cache make 
RUN apk add --no-cache g++
RUN apk add --update libheif-dev
RUN apk add --no-cache libheif-dev
RUN npm i -g npx

# Expose port 3000 
EXPOSE 3000

# RUN ReactJS App 
CMD npm install &&  npm start
