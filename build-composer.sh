#! /bin/env bash

HEAD='\e[7;36m'
RESET='\e[m'
OUTPUT='\e[32m'
NL='\n'
ERROR='\e[3;31m'
WARN='\e[3;33m'

function oneLineOutput() {
    line=$1
    echo -e "${OUTPUT}$line${RESET}"
}

function descriptionOutput() {
    line=$1
    echo -e "${WARN}Description : $line ${RESET}"
}

function warningOutput() {
    line=$1
    echo -e "${ERROR}Warning : $line ${RESET}"
}


read -p "What is container name ? : " containerName

docker build --network host --build-arg user=$USER --build-arg uid=$UID -t minlaxz/composer . && \
docker run --name $containerName -v $HOME:/var/www/html -it -d --network host minlaxz/composer && \
descriptionOutput "Your composer' container name is : $containerName"
