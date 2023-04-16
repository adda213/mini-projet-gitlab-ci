FROM nginx:1.21.1
LABEL maintainer="Ulrich MONJI"
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git && \
    apt-get install -y curl
RUN rm -Rf /usr/share/nginx/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]