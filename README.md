# Dockerfile: NginX 1.12.2 on Alpine Linux 3.7

Dockerfile - Directive file for building docker images.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

* A working computer with Windows/OSX/GNU-Linux
* [Docker] https://www.docker.io

### Installing

* Clone this repository and get into the cloned dir;
* Open a terminal and build the image from Dockerfile by typing:

```
$ docker build -t xafe/nginx .
```
* After the image has been created, run the container by typing:

```
$ docker run -d \
   -v /etc/localtime:/etc/localtime:ro \
   -p80:80 \
   -p443:443 \
   --name {YOUR-CONTAINER-NAME} xafe/nginx
```

## Built With

* [Docker](https://www.docker.io) - Container system
* [Visual Studio Code](https://code.visualstudio.com) - Code editor.

## Versioning
We use [GIT](https://git-scm.com) for versioning.

## Authors

* **Filippo 'joeyrs' Civiletti** - *Complete work* - [Xafe](https://www.xafe.it)

See also the list of [contributors](https://github.com/filicivi/project/contributors) who participated in this project.

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details