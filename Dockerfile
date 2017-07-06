FROM dazworrall/apache2-phpfpm

ENV GRAV_VERSION="1.2.4"

# install needed packages
RUN apt-get update && apt-get install -y wget unzip

# install and configure GRAV application
WORKDIR /var/www
RUN wget "https://github.com/getgrav/grav/releases/download/$GRAV_VERSION/grav-v$GRAV_VERSION.zip" -O grav.zip && \
        unzip grav.zip && \	
	chown -R www-data:www-data ./grav/ && \
	mv grav/* ./html/ && mv grav/.htaccess ./html/ && \
	rm -r grav* 
