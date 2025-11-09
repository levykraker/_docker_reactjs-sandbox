# ReactJS sandbox 

Sandbox for creating an environment to run a ReactJS app

## Instruction 
1. Add to ".env" path to your app directory and the port to expose your app on docker
``` 
WEB_DIR=  / directory with your app
WEB_PORT= / port to expose it outside 
```
2. Run docker-compose up 

## How does it work?
Based on the latest Alpine image, Docker will install Node.js, npm, and npx. 
By default, `npm install` and `npm start` so your app doesn't need to have previously installed node modules.

## Example of docker-compose
```
services:
 web:
  container_name: reactjs-sandbox
  image: anawalinski/reactjs-sandbox
  restart: unless-stopped
  volumes:
    - "${WEB_DIR}:/opt/project"
  ports:
    - "${WEB_PORT}:3000"
 
 ``` 