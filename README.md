# This is dockerized version of LAMP with phpmyadmin.

### How to ?

- Copy **Dockerfile** and **docker-compose.yaml** to your project root directory.
- Confiure your **.env** file (HOST_PORT, UID, USER, DB_HOST)
- Configure service name in **docker-compose.yaml** as your wish
- tips (line 26 of **docker-compose.yaml** is should be matched with line 11 of **.env** DB_HOST)

### Start the application stack

- `docker-compose build (For the first time, building application stack)`
- `docker-compose up -d`

### Stop the application stack

- `docker-compose down`

If you have time, take a look at the **scripts** dir.

---

### For those who want to use containerized composer

`docker build --network host -t minlaxz/composer .`

#### Running containerized composer

`docker run --name dcomposer -v $(pwd):/var/www/html -it --network host minlaxz/composer`

`docker exec -it dcomposer bash -c "sudo -u $USER /bin/bash -c 'composer create-project --prefer-dist laravel/laravel appName'"`
