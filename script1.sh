#!/bin/bash

echo "Digite o primeiro número:"
read n1

echo "Dgite o segundo número :"
read n2

if (( $n1 > $n2 )); then
  echo "O primeiro número é maior"
elif (( $n2 > $n1 ));then
  echo "$O segundo  número é maior"
else
  echo "Os números são iguais"
fi
