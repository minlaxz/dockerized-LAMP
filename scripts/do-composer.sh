#!/bin/bash

args="$@"
command="composer $args"
echo "$command"
docker exec -it $CCID bash -c "sudo -u $USER /bin/bash -c \"$command\""