FROM node
WORKDIR .
COPY ./hello-world/public/ /hello-world/public
COPY ./hello-world/src/ /hello-world/src
COPY ./hello-world/package.json /hello-world/
RUN cd /hello-world/ && npm install && npm run build
# Expose the port
EXPOSE 3000
# Run the app
CMD ["npm", "start"]
