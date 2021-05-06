#!/bin/bash

# Verifica se o valor de duas variaveis sao iguais ou diferentes

V1=$1;
V2=$2;

if [ $V1 = $V2 ];
then
  echo "os valores são iguais"
else
  echo "os valores são diferentes"
fi
