#!bin/bash

V1=$1
V2=$2
V3=$3



if [ $V1 = "print" ]; # Realiza a impressao do valor recebido
then
  if [ -z $V2 ];
  then
    echo "Nenhum valor foi informado.";
  else
    echo "O valor recebido foi $V2 $V3";
  fi

elif [ $V1 = "pwd" ]; # Exibe o diretorio atual do usuario
then
  echo "O diretorio atual eh: "$(pwd);


elif [ $V1 = "mkdir" ]; # Cria um ou dois diretorios informados pelo usuario
then
  if [ -n $V2 ];
  then
    if [ -z $V3 ];
    then
      $(mkdir $V2);
    else
      $(mkdir $V2);
      $(mkdir $V3);
    fi
  fi

elif [ $V1 = "existe" ]; # Verifica se um diretorio ou arquivo existe
then
  if [ -e $V2 ];
  then
    echo "$V2 existe";
  else
    echo "$V2 nao existe";
  fi

elif [ $V1 = "tipo" ]; # Verifica se eh arquivo ou diretorio
then
  if [ -d $V2 ];
  then
    echo "$V2 eh um diretorio";
  elif [ -f $V2 ];
  then
    echo "$V2 eh um arquivo";
  else
    echo "Verifique a existencia de $V2 utilizando 'existe' como primeiro parametro.";
  fi

elif [ $V1 = "vazio" ]; # Verifica se um arquivo esta vazio
then
  ARQ1=$(cat $V2);
  if [ -s $ARQ1 ];
  then
    echo "$V2 esta vazio";
  else
    echo "$V2 nao esta vazio";
  fi

elif [ $V1 = "numeros" ]; # Verifica qual numero eh maior
then
  if [ $V2 -gt $V3 ];
  then
    echo "$V2 eh maior que $V3";
  elif [ $V2 -lt $V3 ];
  then
    echo "$V2 eh menor que $V3";
  elif [ $V2 -eq $V3 ];
  then
    echo "$V2 e $V3 sao iguais";
  fi

elif [ $V1 = "numerosiguais" ]; # Verifica se dois numeros sao iguais
then
  if [ $V2 -eq $V3 ];
  then
    echo "$V2 e $V3 sao iguais";
  elif [ $V2 -ne $V3 ];
  then
    echo "$V2 e $V3 sao diferentes";
  fi

elif [ $V1 = "arquivos" ]; # Realiza comparacoes entre o conteudo de dois arquivos
then
  ARQ1=$(cat $V2);
  ARQ2=$(cat $V3);
  if [ $ARQ1 -gt $ARQ2 ];
  then
    echo "$V2 eh maior que $V3";
  elif [ $ARQ1 -lt $ARQ2 ];
  then
    echo "$V2 eh menor que $V3";
  elif [ $ARQ1 -eq $ARQ2 ];
  then
    echo "$V2 e $V3 sao iguais";
  fi

elif [ $V1 = "arquivosiguais" ]; # Verifica se dois arquivos sao iguais
then
  ARQ1=$(cat $V2);
  ARQ2=$(cat $V3);
  if [ $ARQ1 = $ARQ2 ];
  then
    echo "$V2 e $V3 sao iguais";
  elif [ $ARQ1 != $ARQ2 ];
  then
    echo "$V2 e $V3 sao diferentes";
  fi

fi
