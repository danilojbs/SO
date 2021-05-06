#!/bin/bash

# Cria dois diretorios se o parametro recebido for o nome de uma pasta

V1=$1

if [ -d $V1 ];
then
  $(mkdir pasta1);
  $(mkdir pasta2);
else
  echo "A pasta $V1 nao existe.";
fi
