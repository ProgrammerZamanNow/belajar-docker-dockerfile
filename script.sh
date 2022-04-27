
# FROM Instruction
docker build -t khannedy/from from

docker image ls

# RUN Instruction
docker build -t khannedy/run run

docker build -t khannedy/run run --progress=plain --no-cache

# CMD Instruction
docker build -t khannedy/command command

docker image inspect khannedy/command

docker container create --name command khannedy/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t khannedy/label label

docker image inspect khannedy/label

# ADD Instruction
docker build -t khannedy/add add

docker container create --name add khannedy/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t khannedy/copy copy

docker container create --name copy khannedy/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t khannedy/ignore ignore

docker container create --name ignore khannedy/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t khannedy/expose expose

docker image inspect khannedy/expose

docker container create --name expose -p 8080:8080 khannedy/expose

docker container start expose

docker container ls

docker container stop expose

# ENV Instruction
docker build -t khannedy/env env

docker image inspect khannedy/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 khannedy/env

docker container start env

docker container ls

docker container logs env

docker container stop env

# VOLUME Instruction
docker build -t khannedy/volume volume

docker image inspect khannedy/volume

docker container create --name volume -p 8080:8080 khannedy/volume

docker container start volume

docker container logs volume

docker container inspect volume

#15a53c9a60b9aaddb3c294cde03e6f283f319acf0db3e40c5d4b4a992a6451f1

docker volume ls

# WORKDIR Instruction
docker build -t khannedy/workdir workdir

docker container create --name workdir -p 8080:8080 khannedy/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

# USER Instruction
docker build -t khannedy/user user

docker container create --name user -p 8080:8080 khannedy/user

docker container start user

docker container exec -i -t user /bin/sh

# ARG Instruction
docker build -t khannedy/arg arg --build-arg app=pzn

docker container create --name arg -p 8080:8080 khannedy/arg

docker container start arg

docker container exec -i -t arg /bin/sh

# HEALTHCHECK Instruction
docker build -t khannedy/health health

docker container create --name health -p 8080:8080 khannedy/health

docker container start health

docker container ls

docker container inspect health

# ENTRYPOINT Instruction
docker build -t khannedy/entrypoint entrypoint

docker image inspect khannedy/entrypoint

docker container create --name entrypoint -p 8080:8080 khannedy/entrypoint

docker container start entrypoint

# Multi Stage Build
docker build -t khannedy/multi multi

docker image ls

docker container create --name multi -p 8080:8080 khannedy/multi

docker container start multi

# Docker Push
docker tag khannedy/multi registry.digitalocean.com/programmerzamannow/multi

docker --config /Users/khannedy/.docker-digital-ocean/ push registry.digitalocean.com/programmerzamannow/multi

docker --config /Users/khannedy/.docker-digital-ocean/ pull registry.digitalocean.com/programmerzamannow/multi