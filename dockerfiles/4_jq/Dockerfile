FROM debian
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y jq
ADD http://localhost/games games.json
ENTRYPOINT jq '.' games.json
