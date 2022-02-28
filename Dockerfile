FROM node:17 as builder
WORKDIR /app
COPY . .
RUN yarn
RUN ["yarn", "build"]

FROM nginx:latest
LABEL traefik.routers.loginui.middlewares target_is_static
LABEL traefik.routers.loginui.rule Pathprefis(`/login`) && Method(`GET`)
WORKDIR /usr/share/nginx/html
COPY --from=builder /app/dist .
EXPOSE 80