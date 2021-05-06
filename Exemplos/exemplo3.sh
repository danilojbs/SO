#!/bin/bash

# Comparar se o conteudo de dois arquivos diferentes sao iguais

V1=$1;
V2=$2;

CONTEUDO1=$(cat $V1);
CONTEUDO2=$(cat $V2);

if [ $CONTEUDO1 = $CONTEUDO2 ];
then
  echo "os valores sao iguais"
else
  echo "os valores nao sao iguais"
fi
