
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