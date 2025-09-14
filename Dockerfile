FROM nginx:alpine

# Copy application files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY resources/ /usr/share/nginx/html/resources/

EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]