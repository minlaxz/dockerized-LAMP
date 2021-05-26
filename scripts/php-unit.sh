#!/bin/bash

args="$@"
command="vendor/bin/phpunit $args"
echo "$command"
docker exec -it $CURRENT_CONTAINER bash -c "sudo -u $USER /bin/bash -c \"$command\""