FROM node:alpine
WORKDIR /app
COPY ./package*.json ./
RUN npm install
COPY . ./n

# Development:
CMD ["npm", "start"]

# production
# RUN npm run build-docker

# FROM nginx
# EXPOSE 80
# COPY --from=0 /app/build /usr/share/nginx/html