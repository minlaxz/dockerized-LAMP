#!/bin/bash

args="$@"
command="php artisan $args"
echo "$command"
docker exec -it xdou-app bash -c "sudo -u $USER /bin/bash -c \"$command\""