# Wordpress docker cluster with MySQL, PHPMyAdmin and WP-CLI

This project allows the easy configuration and setup of Wordpress, MySQL, PHPMyAdmin and WP-CLI containers and the auto configuration of Wordpress and the Auth0 Wordpress plugin. 

## Project setup

Requirements:
- Docker
- Git


1. Copy the .env.example to .env and configure
```
cp .env.example .env
```

2. Update the `WP_EMAIL` in the .env file to your email address.

3. Create the containers.
```bash
sudo ./start create
```

4. Wait for Wordpress and MySQL to finish installing.

The DB will be ready when the `db_1` line will output something like:
[Server] /usr/sbin/mysqld: ready for connections. Version: '8.0.27'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server - GPL.

Wordpress will be ready when the `wordpress_1` stream will output something like:
[core:notice] [pid 1] AH00094: Command line: 'apache2 -D FOREGROUND'

5. Perform configuration of Wordpress + Auth0 plugin
```
sudo ./start configure
```

6. Open Wordpress admin login screen in a browser (Default is: `http://localhost:8081/wp-login.php` (port number is set in the `WP_EXT_PORT` variable in .env file. Change it to the port set). Username and password is set in the .env file as `WP_ADMIN_USER` and `WP_ADMIN_PASSWORD` respectively
