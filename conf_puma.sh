#!/bin/bash

# Autor: Alberto González

# Ejecutar este script dentro del contenedor docker para arrancar el servidor de pruebas
# En desarrollo

# VARIABLES
ruta_app="/RAILS"
ip_test=$(tail -n1 /etc/hosts | awk '{print $1}')

# FUNCIONES

# PROGRAMA
gem install bundler -v '=1.10' --default
bundle install
rails s -p 3000 -b ${ip_test}
