
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