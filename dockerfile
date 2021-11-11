FROM node:alpine
WORKDIR /app
COPY ./package*.json ./
RUN npm install
COPY . ./

# Development:
CMD ["npm", "run","start-docker"]

# production
# RUN npm run build-docker

# FROM nginx
# EXPOSE 80
# COPY --from=0 /app/build /usr/share/nginx/html