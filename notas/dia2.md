# Ansible

Sintaxis:
    Más sencilla
    Declarativo:
        Digo como lo quiero no lo que hay que hacer
    Idempotencia:
        Por muchas veces que ejecute un playbook siempre acaba 
        aquello de la misma forma, en el mismo estado

Que cosas necesito para trabajar con Ansible:
    Python en la máquina que corre
    Acceso por ssh - UNIX/Linux/BSD
               winrm - Windows
    Playbook:
        Conjunto de tareas / estados que quiero tener en mis entornos
        Fichero yaml
    Inventario:
        Conjunto de entornos a administrar
        En que formato lo escribo:
            Fichero .ini *****
            Fichero .yaml
            Hibrido
        Dentro de un inventario que defino?
            Entornos
            Grupos de entornos
            Variables/configuraciones de cada entorno/grupo

---
FICHERO PLAYBOOK:
-   hosts: (Lo piedo dar a posteriori, en tiempo de ejecución)
    order: inventory
    gather_facts: True ! Cuidado: Es muy lento
    vars: 
    pre_tasks:
    tasks:
        - name:
          modulo: configuración.... 
          vars:
          failed_when:
          changed_when:
          when: EXPRESION LOGICA o LISTA DE EXPRESIONES QUE SE ANIDAN MEDIANTE UN AND
                Permite determinar cuando se debe ejecutar la tarea
          register: NOMBRE_VARIABLE
            NOMBRE_VARIABLE is success
            NOMBRE_VARIABLE is failed
            NOMBRE_VARIABLE is skipped
            NOMBRE_VARIABLE is changed
            NOMBRE_VARIABLE.datos de vuelta del modulo
          notify: NOMBRE DE OTRA TAREA DEFINIDA DENTRO DEL BLOQUE: handlers
                  NOMBRE_EVENTO
    post_tasks:
    handlers:    Solo se ejecutan como mucho 1 vez y cuando?
                 Cuando la tarea que dispara el handler ha provocado un cambio
                 Despues de cada bloque de tareas: pre, tasks, post
        - name:
          modulo: configuración.... 
          listen: NOMBRE_EVENTO
---
MODULO de ANSIBLE? 
Un programa que es el que hace la tarea al final
Podemos tener los nuestros propios? SI
Pero ansible trae suficientes? Tropecientosmil 
---
Dentro del playbook puedo hacer uso de mis variables... Que sintasis uso?
    variable.subdato
    Según el campo en el que las use, es necesario o no usar notación jinja
En algunos casos (xxxx_when) no es necesario poner las llaves... ansible lo hace por mi

jinja? Motor de plantillas de python
    " textos mios {{ variable.sudato | pipes }} mas textos"
    ^ Ahí colocada, la palabra !unsafe evita que el contenido se procese como jinja
    
---
Expresiones regulares:             

TEXTO                                    PATRON                         CUMPLE
Hola amigo                                  contiene "amigo"                SI
Hola amigo                                  empieza por "amigo"             NO
Hola amigo                                  acaba por "amigo"               SI
Hola amigo                                  contien dos letras a seguidas?  NO
                                            SINTAXIS PERL

PATRON Secuencia de bloques
BLOQUE:
    Secuencia de caracteres y un factor de repeticion
                            SEC. CARACTERES     FACTOR DE REP       PATRON
                            amigo               (1)                 amigo
                            [aeiou]     Si el texto contiene alguno de esos caracteres
                                                ?   Puede estar o no
                                                                    [aeiou]?
                                                +   Debe estar al menos 1 vez
                                                                    [aeiou]+
                                                *   Puede estar todas las veces que quiere
                                                {3} Tiene que estar 3 veces seguidas
                                                                    [iog]{3}
                                                {3,5} De tres a cinco veces
                            [a-z]
                            [A-Z]
                            [a-zA-Z3-9ñÓç]
                            \s blancos
                            \w caracteres que encontramos en palabras
                            . cualquier caracter  .?
                            ^   Empieza por
                            $   Acaba por
Los bloques se pueden agrupar con parentesis
Se aplican secuencialmente, a no ser que se unan mediante el simbolo pipe | OR


[1-9][0-9]*         Contiene un numero entero positivo (cero no incluido)

9384562             SI
0987
Hola876adios
^[1-9][0-9]*$       Es un numero entero positivo (cero no incluido)
^( 0 | ([1-9][0-9]*) )$       Es un numero entero positivo (cero incluido)

^[0-9]+$


-----------------------------------
instalar una serie de programas en nuestro ordenador UBUNTU
git
ansible
terraform

apt 