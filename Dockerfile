FROM nginx:1.25-alpine

# Remove default config if needed
RUN rm /etc/nginx/conf.d/default.conf

COPY app/index.html /usr/share/nginx/html/index.html

# Use unprivileged port
EXPOSE 8080
