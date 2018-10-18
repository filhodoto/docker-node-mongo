## Base of our image
FROM node:10

## Path for project root
WORKDIR /usr/src/app

## Copy package.json and package-lock so we can run it after
COPY package*.json ./

## Run NPM on that package.json
RUN npm install

## Copy everything to workdir
COPY . .

## Show at 3000 port
EXPOSE 3000

## Run command from package.json npm start
CMD ["npm", "start"]