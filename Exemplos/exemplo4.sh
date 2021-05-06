#!/bin/bash

# Comparacoes entre 2 numeros informados pelo usuario

V1=$1;
V2=$2;

if [ $V1 -gt $V2 ];
then
  echo "o primeiro parametro eh maior"
elif [ $V1 -lt $V2 ];
then
  echo "o segundo parametro eh maior"
elif [ $V1 -eq $V2 ];
then
  echo "os parametros sao iguais"
fi
