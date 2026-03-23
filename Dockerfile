FROM nginx:alpine

# Copy the HTML file as index.html
COPY quimica.html /usr/share/nginx/html/index.html

# Copy custom nginx config that uses Railway's $PORT
COPY nginx.conf /etc/nginx/templates/default.conf.template

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
