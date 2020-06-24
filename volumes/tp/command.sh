docker run -d --rm -p 80:80 -v $PWD/site:/usr/local/apache2/htdocs/test httpd
firefox http://loalhost:80/test
