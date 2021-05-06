#!/bin/bash

# Verifica se o que foi lido pelo usuario eh um arquivo ou um diretorio

V1=$1;

if [ -d $V1 ];
then
  echo "$V1 eh um diretorio"
elif [ -f $V1 ];
then
  echo "$V1 eh um arquivo"
fi
