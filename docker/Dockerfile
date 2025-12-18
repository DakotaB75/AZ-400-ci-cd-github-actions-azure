FROM node:18 AS build
WORKDIR /app
COPY app/sample-app/package*.json ./
RUN npm install
COPY app/sample-app .
RUN npm run build

FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
