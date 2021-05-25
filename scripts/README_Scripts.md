Before running
---

```docker-compose build && docker-compose up -d```
---
---
    => reconfigure username in .env 


---

Scripts Examples

$ ./enter-container.sh

USER@DOCKER_HOST:/var/www/html$

---

$ ./enter-db

mysql>

---

$ ./do-composer.sh dump-autoload

Generating optimized autoload files> Illuminate\Foundation\ComposerScripts::postAutoloadDump
> @php artisan package:discover --ansi
Discovered Package: beyondcode/laravel-dump-server
Discovered Package: fideloper/proxy
Discovered Package: laravel/tinker
Discovered Package: nesbot/carbon
Discovered Package: nunomaduro/collision
Package manifest generated successfully.
Generated optimized autoload files containing 3527 classes

---

$ ./php-artisan.sh make:controller BlogPostController --resource

php artisan make:controller BlogPostController --resource
Controller created successfully.

---

$ ./php-unit.sh --group=failing

vendor/bin/phpunit --group=failing
PHPUnit 7.5.8 by Sebastian Bergmann and contributors.

Time: 34 ms, Memory: 6.00 MB

No tests executed!

---