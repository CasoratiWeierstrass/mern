FROM node:21.5-alpine3.18
RUN mkdir -p ~/Desktop/kubernetes/mern
WORKDIR /c/Users/Administrateur/Desktop/kubernetes/mern
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8000
EXPOSE 27017
RUN cd sources/ms-avis && npm run dev && cd -
RUN cd sources/front-avis && npm run dev && cd -
CMD ["node","index.js"]
