#!bin/bash

# Informa o diretorio atual do usuario caso o segundo valor seja nulo

V1=$1
V2=$2

if [ -z $V2 ];
then
  echo "O diretorio atual eh: "$(pwd);
fi
