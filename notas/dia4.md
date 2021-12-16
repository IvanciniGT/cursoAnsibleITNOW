1º Ver si todo se instaló: Fact (COOKIE)
Si está... hacer comprobaciones:
    version desplegada app es la buena
    Pruebas
        Nginx corriendo version
        Respuesta son válidas
    OK -> Me piro
    NOK sigo
Si no está , empiezo
PLAYBOOK COMPLETO

Dejo la cookie
    True
    False
current_versions
{
    "versions":
        "web": git rev-parse --short HEAD,
        "git": git --version,
        "nginx": nginx -v
}
installed_versions
{
    "versions":
        "web": version,
        "git": version,
        "nginx": version  # 10.1.7     > 10.1
}

r w x
1 1 1
0 0 0

0 0 1 -> 1 execucion solo <<<<
0 1 0 -> 2 escrituta solo <<<<
0 1 1 -> 
1 0 0 -> 4 lectura solo   <<<<
1 0 1 -> 
1 1 0 -> 
1 1 1 -> 

1 0 0 -> 4 lectura solo