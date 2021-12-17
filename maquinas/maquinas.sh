#!/bin/bash

function filtrar(){
copiado="$(docker inspect -f '{{.Name}} ansible_host={{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -q) |grep $1)"
echo "${copiado//\//}"
}
echo
echo [apache]
filtrar apache
echo

echo [nginx]
filtrar nginx