FROM node
WORKDIR .
RUN npm install -g create-react-app
RUN npx create-react-app hello-world
RUN cd /hello-world && npm start