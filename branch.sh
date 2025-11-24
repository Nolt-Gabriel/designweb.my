#!/bin/bash

#Script que automatiza a execução desses comandos git:
git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
git fetch --all
git pull --all
#Esses comandos resumidamente vão puxar suas branchs remotas e adicionar localmente,
#serve pra você não ter que copiar isso toda vez que abrir uma nova pasta.