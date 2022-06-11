
FROM node:latest


WORKDIR /app
ADD . / /app/

RUN npm install
RUN npm config set scripts-prepend-node-path auto

WORKDIR /app
EXPOSE 80
# set react app port to 80
ENV PORT=80
CMD ["npm",  "start"]
