# This is dockerized version of LAMP with phpmyadmin.

How to use this application stack?

- Copy **Dockerfile** and **docker-compose.yaml** to your project root directory.
- Confiure your **.env** file (HOST_PORT, UID, USER, DB_HOST)
- Configure service name in **docker-compose.yaml** as your wish
- tips (line 26 of **docker-compose.yaml** is should be matched with line 11 of **.env** DB_HOST)

### How to start the stack

- `docker-compose build && docker-compose up -d` (For the first time)
- `docker-compose up -d`

### How to stop the stack

- `docker-compose down`

If you have time, take a look at the **scripts** dir.

That's it, I am a liitle bit busy for the documentation, sorry.
