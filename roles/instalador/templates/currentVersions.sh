#!/bin/sh
echo [VERSIONS]
{% for herramienta in versionesInstaladas.results %}
echo {{ herramienta.item.key }}=$({{ herramienta.item.value.version.command | default (herramienta.item.key + " --version") }} | sed )
{% endfor %}