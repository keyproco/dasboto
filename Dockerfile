FROM node:20 as build

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY . .

RUN npm run build --omit=dev

FROM nginx:alpine

COPY --from=build /app/dist/  /usr/share/nginx/html

RUN rm /etc/nginx/nginx.conf

COPY ./config/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]