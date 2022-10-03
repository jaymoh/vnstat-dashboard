# What is vnstat-dashboard?
This dashboard is an adaptation of **vnstat-php-frontend** by bjd using Bootstrap written in PHP.

It is forked from [vnstat-dashboard](https://github.com/alexandermarston/vnstat-dashboard) by Alexander Marston.

I updated a few lines to make it work with the updated version of vnstat: **2.6**, and **PHP 8.0**.

It provides the following:

* Hourly Statistics Chart (using Google Charts)
* Daily & Monthly Statistics Overview
* Top 10-Day Statistics
* Automatically populated interface selection

## How to Run it with Docker

### How to build it
``
docker build . -t hackins/vnstat-dashboard:latest
``

### How to publish it
``
docker push hackins/vnstat-dashboard:latest
``

### How to start it (assumes port 30 is free) Read more about [Docker Port Mapping](https://docs.docker.com/config/containers/container-networking/).

``
docker run --name vnstat-dashboard -p 30:80 -v /usr/bin/vnstat:/usr/bin/vnstat -v /var/lib/vnstat:/var/lib/vnstat -d hackins/vnstat-dashboard:latest
``

### How to stop it
``
docker stop vnstat-dashboard
``

## How to run it locally directly on your machine or VM
Clone the repo on to your local machine or VM

``
git clone https://github.com/jaymoh/vnstat-dashboard.git
``

Change directory to the `vnstat-dashboard` folder

``
cd vnstat-dashboard
``

```
cp -rp app/ /var/www/html/vnstat/
cd /var/www/html/vnstat/
composer install
```

You should have Apache installed and running on your machine or VM. If not, install it.

``
sudo apt install apache2 php wget unzip -y
``

The dashboard should be accessible at `http://localhost/vnstat/`

## Licensing
Copyright (C) 2019 Alexander Marston (alexander.marston@gmail.com)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
