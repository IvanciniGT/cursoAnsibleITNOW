{{ansible_local.installedVersions | zip (ansible_local.currentVersions) | list}}
{{ansible_local.installedVersions.VERSIONS | dict2items | zip (ansible_local.currentVersions.VERSIONS| dict2items) | list}}

[
    -    - key: curl
           value: 7.58.0 
         - key: curl
           value: 7.58.0 
    -    - key: git
           value: 2.34.1
         - key: git
           value: 2.34.1
    -    - key: nginx
           value: 1.14.0
         - key: nginx
           value: 1.14.0

]

combine()
currentVersions.VERSIONS | dict2items

git: 2.34.1
curl: 7.58.0
nginx: 1.14.0

  VVVVVV

- key: curl
value: 7.58.0 
- key: git
value: 2.34.1
- key: nginx
value: 1.14.0


- 1
- 2

- a 
- b 

ZIP:

- - 1
  - a
- - 2
  - b




ALGORITMO INSTALADOR:
    
    Montamos una variable INSTALAR_HERRAMIENTAS {}
    Montamos una variable HAY_CAMBIOS: False
    Montamos una variable HAY_INSTALAR: False
    
    Recuperar facts
        Si no existen: HAY_INSTALAR: True
        En caso contrario:
            Miro si hay cambios comparando los FACTS
                Si no hay cambios: HAY_INSTALAR: False
                Si hay cambios:
                    Comprobamos que las versiones instaladas cumplan con los requerimientos
                        Si alguna no cumple:
                            HAY_INSTALAR: True
                            INSTALAR_HERRAMIENTAS < La que no cumple con los requisitos
    
    Instalo SI HAY_INSTALAR
        Que?
            Si la herranienta está en INSTALAR_HERRAMIENTAS
            o si INSTALAR_HERRAMIENTAS está vacia
                

Alguien en la empresa montó un ROLE: Instalador
Playbook 
2 grupos servidores
    web servers
        2 nginx 0,1
    webservers
        2 apache a,b

Herramientas instaladas ... configuradas a nivel de grupo

Playbook que haga ese trabajo

contenedores



















