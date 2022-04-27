
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