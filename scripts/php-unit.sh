#!/bin/bash

args="$@"
command="vendor/bin/phpunit $args"
echo "$command"
docker exec -it xdou-app bash -c "sudo -u $USER /bin/bash -c \"$command\""