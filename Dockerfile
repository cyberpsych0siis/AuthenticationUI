FROM node:17 as builder
WORKDIR /app
COPY . .
RUN yarn
RUN ["yarn", "build"]

FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY --from=builder /app/dist .
EXPOSE 80