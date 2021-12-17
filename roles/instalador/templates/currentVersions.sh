#!/bin/sh
echo [VERSIONS]
{% for herramienta in versionesInstaladas.results %}
echo {{ herramienta.item.key }}=$({{ herramienta.item.value.version.command | default (herramienta.item.key + " --version") }} | grep -Eo '[0-9]+[.][0-9]+([.][0-9]+)' | head -1 )
{% endfor %}
