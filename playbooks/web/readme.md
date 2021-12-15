PARAMETRIZACION:
    puerto
    carpeta web


INSTALACIONES
git, curl, nginx

CONFIGURACION WEBSERVER
fichero
clonado de una web

COMPROBACIONES
curl


ufw NGINX

docker container create --name entorno-remoto-1 rastasheep/ubuntu-sshd:14.04
docker start entorno-remoto-1
ssh root@172.17.0.2
echo Contraseña: root