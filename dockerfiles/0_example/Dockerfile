## Part de debian (image de base).
FROM debian as build
## Commande lance a la construction de l'image.
WORKDIR /home/root/todo-ng-demo/
RUN apt-get update && \
    apt-get install -y npm git
## Recuperation du code source
RUN git clone https://github.com/jponcy/todo-ng-demo.git
RUN npm build
# RUN mkdir -p /home/root/files && \
#     echo 'Salut' > /home/root/files/README.md
# EXPOSE 80
# ## Commande (surchargable) lancé en runtime
# CMD systemctl start apache2

## Second image

FROM build
RUN apt-get install -y apache2
## Configure Apache2
ADD http://github/fakeurl/site.conf site.conf
RUN a2ensite site
EXPOSE 80
COPY --from=build /home/root/todo-ng-demo/bin /var/www/front
ENTRYPOINT systemctl start apache2
