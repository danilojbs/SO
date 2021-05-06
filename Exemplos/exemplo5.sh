#!/bin/bash

# Realizar a soma de todos os numeros maior ou igual a 5 informados pelo usuario

ACUMULADOR=0

for entrada in $@;
do
  if [ $entrada -ge 5 ];
  then
    let ACUMULADOR=$ACUMULADOR+$entrada;
  fi
done

echo "$ACUMULADOR"
