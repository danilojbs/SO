#!/bin/bash

# Recebe dois arquivos e realiza comparacoes entre ambos

V1=$1;
V2=$2;

ARQ1=$(cat $V1);
ARQ2=$(cat $V2);

if [ $ARQ1 -gt $ARQ2 ];
then
  echo "$V1 eh maior que $V2"
elif [ $ARQ1 -lt $ARQ2 ];
then
  echo "$V1 eh menor que $V2"
else
  echo "$V1 e $V2 sao iguais"
fi
