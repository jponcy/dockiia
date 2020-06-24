FROM debian
RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*
CMD curl https://http.cat/404
## OR
# ENTRYPOINT curl
# CMD https://http.cat/404


## Autre possibilite avec de la re-utilisation (n'apporte ici aucun avantage)
# FROM debian as exo1
# RUN apt-get update && \
#     apt-get install -y curl && \
#     rm -rf /var/lib/apt/lists/*

# FROM exo1
# ENTRYPOINT [ "curl" ]
# CMD "https://http.cat/404"
