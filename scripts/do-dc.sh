#!/bin/bash

read -p "What is your composer' container name ? : " containerName
read -p "Composer command (without 'composer' ..) ? : " composerCommand
command="composer $composerCommand"
echo "$containerName"
echo "$command"
docker exec -it $containerName bash -c "sudo -u $USER /bin/bash -c \"$command\""
