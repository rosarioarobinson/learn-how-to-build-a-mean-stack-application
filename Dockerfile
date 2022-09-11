FROM node:10
WORKDIR /lafs-api
COPY package*.json ./
# RUN npm install -g @angular/cli@v6-lts
RUN mkdir /app

# Bundle app source
COPY . .
# Expose port 3000 outside container
EXPOSE 3000
# Command used to start application
CMD ["npm", "start"]