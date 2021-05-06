#!/bin/bash

# Cria o diretorio UNIP caso o valor recebido seja "UNIP"

V1=$1

if [ $V1 = "UNIP" ];
then
  $(mkdir $V1);
fi
