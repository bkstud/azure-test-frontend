
FROM node:latest


WORKDIR /app
ADD . / /app/

RUN npm install
RUN npm config set scripts-prepend-node-path auto

WORKDIR /app
EXPOSE 80
# set react app port to 80
ENV PORT=80
ENV REACT_APP_BACKEND_URL="http://ebizproj9-backend.azurewebsites.net"
CMD ["npm",  "start"]
