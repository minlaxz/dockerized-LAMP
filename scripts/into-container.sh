#!/bin/bash

read -p "What is your composer' container name ? : " containerName

docker exec -it $containerName bash -c "sudo -u $USER /bin/bash"
