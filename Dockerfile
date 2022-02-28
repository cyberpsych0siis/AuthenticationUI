FROM node:17 as builder
WORKDIR /app
COPY . .
RUN yarn
RUN ["yarn", "build"]

FROM nginx:latest
WORKDIR /var/www/html
COPY --from=builder /app/dist .
EXPOSE 80