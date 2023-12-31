FROM node:12
COPY ["package-lock.json", "package.json", "/usr/src/"]
WORKDIR /usr/src
RUN npm install
COPY [".", "/usr/src/"]
EXPOSE 3000
CMD ["npx", "nodemon", "-L", "index.js"]
