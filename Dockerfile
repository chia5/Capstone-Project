<<<<<<< HEAD
FROM ubuntu:18
=======
FROM ubuntu:16.04
>>>>>>> 3636171aa220d425720b9160c035b69f0aa16b63
RUN apt update && apt-get install apache2 -y
COPY . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80
<<<<<<< HEAD

=======
>>>>>>> 3636171aa220d425720b9160c035b69f0aa16b63
