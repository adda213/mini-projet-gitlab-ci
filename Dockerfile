FROM httpd:2.4
ADD ./static-website-example/ /usr/local/apache2/htdocs/
CMD gunicorn --bind 0.0.0.0:$PORT wsgi 