# FROM debian:jessie
# WORKDIR /usr/local
# RUN apt-get update && apt-get upgrade -y
# RUN apt-get install -y nodejs npm git
# RUN git clone https://github.com/jponcy/fake-game-api
# # RUN npm install npm@latest -g
# # RUN npm -v
# RUN npm install --only=production
# EXPOSE 3000
# ENTRYPOINT [ "npm", "run", "start:separed" ]

FROM debian
RUN apt-get update && \
    apt-get install -y git npm && \
    rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/jponcy/fake-game-api
WORKDIR /fake-game-api
RUN npm install npm@latest -g
RUN npm install --only=production
EXPOSE 8080
ENTRYPOINT [ "npx", "json-server", "assets/separed.json", "--port", "8080", "--host", "0.0.0.0" ]
