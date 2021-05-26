#!/bin/bash

args="$@"
command="composer $args"
echo "$command"
docker exec -it $CURRENT_CONTAINER bash -c "sudo -u $USER /bin/bash -c \"$command\""