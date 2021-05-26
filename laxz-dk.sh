#! /bin/bash

HEAD='\e[7;36m'
RESET='\e[m'
OUTPUT='\e[32m'
NL='\n'
ERROR='\e[3;31m'
WARN='\e[3;33m'

function oneLineOutput() {
    line=$1
    echo -e "laxz-dk : ${OUTPUT}$line${RESET}"
}

function descriptionOutput() {
    line=$1
    echo -e "${WARN}laxz-dk : $line ${RESET}"
}

function warningOutput() {
    line=$1
    echo -e "${ERROR}laxz-dk : $line ${RESET}"
}

function hasDocker() {
    dpkg-query -l docker >/dev/null 2>&1
    return $?
}


hasDocker
if [[ $? -eq 0 ]]; then
    descriptionOutput "Docker is installed."
else
    warningOutput "cannot be found docker!"
fi

docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Image}}"

echo -e "${WARN}"
read -p "Enter Conatiner Name: " containerName

echo -e "${OUTPUT}"
docker ps -aqf "name=^$containerName" --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Image}}"
echo -e "${RESET}"

containerID=$(docker ps -aqf "name=^$containerName")
scriptDir=$(dirname "$0")

# sed -i 's/CURRENT_CONTAINER=/CURRENT_CONTAINER=\$containerID/' ./dockerenv
echo "export CCID=$containerID" > "$HOME/.laxz/dockerenv"

