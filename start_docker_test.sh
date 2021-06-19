#!/bin/bash

# Autor: Alberto González



# VARIABLES
puertos=""
ruta_volumen_local=""
ruta_volumen_contenedor=""
nombre_imagen=""


# FUNCIONES

create_network() {
    docker network create --subnet=192.168.0.0/16 test
    docker network create --subnet=192.168.0.0/16 --gateway 192.168.0.1 test2
}


create_image() {
    docker build -t ${nombre_imagen} .
}



run_docker() {

    docker run --rm -it -p 3000:3000 -v /mnt/c/Users/Alberto/Documents/GitHub/Learn_Ruby/RAILS:/RAILS ror bash
    docker run --rm --net test --ip 192.168.0.23 -it -p 3000:3000 -v /mnt/c/Users/Alberto/Documents/GitHub/Learn_Ruby/RAILS:/RAILS ror bash
}



# PROGRAMA
run_docker




--net mynet123 --ip 172.18.0.22