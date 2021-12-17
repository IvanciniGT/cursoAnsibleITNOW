#!/bin/bash

function filtrar(){
copiado="$(docker inspect -f '"{{.Name}}":{ "ansible_host": "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" },' $(docker ps -q) |grep $1)"
copiado="$(echo ${copiado//\//})"
echo "${copiado::-1}"
}
echo {
echo \"apache\": {
filtrar apache
echo },

echo \"nginx\": {
filtrar nginx

echo }
echo }