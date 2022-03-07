FROM node:17 as builder
WORKDIR /app
COPY . .
RUN yarn
RUN ["yarn", "build"]

FROM nginx:latest
# LABEL traefik.http.routers.loginui.middlewares target_is_static@file
# LABEL traefik.http.routers.loginui.rule PathPrefix(`/login`) && Method(`GET`)
WORKDIR /usr/share/nginx/html
COPY --from=builder /app/dist .
EXPOSE 80
