#!/bin/bash

# Recebe dois valores e verifica se sao iguais

V1=$1;
V2=$2;

if [ $V1 -eq $V2 ];
then
  echo "$V1 e $V2 sao iguais"
elif [ $V1 -ne $V2 ];
then
  echo "$V1 e $V2 nao sao iguais"
fi
