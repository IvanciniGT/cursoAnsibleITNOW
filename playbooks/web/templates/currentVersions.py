#!/usr/bin/python3
import json
import re
from subprocess import run, PIPE

RUTA="{{ nginx.webPath }}"

def ejecutarComando(comando):
    resultado=run(comando, stdout=PIPE,stderr=PIPE)
    return (resultado.stdout + resultado.stderr).decode("ascii").strip()

def extraerVersion(texto):
    busqueda=re.search("([0-9]+[.][0-9]+([.][0-9a-z]+)?)", texto)
    return busqueda.group(0)

web=ejecutarComando(["git", "--git-dir",RUTA+"/.git","rev-parse", "--short", "HEAD"])
git=extraerVersion(ejecutarComando(["git", "--version"]))
nginx=extraerVersion(ejecutarComando(["nginx", "-v"]))

software={"web": web, "git": git, "nginx": nginx }
versions={ "versions" : software }
print(json.dumps(versions))
