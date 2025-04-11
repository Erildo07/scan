#!/bin/bash 

echo "Você deseja atualizar o sistema: [sim/não]"
read resposta 

if [[ $resposta  == "sim" ]]; then
	sudo apt-get update -y > log.txt
	sudo apte-get upgrade -y >>log.txt
	sudo apt-get autoremove -y >> log.txt
elif [[ $resposta == "não" ]]; then
	echo "Saindo do atualizador: "
else 
	echo "Resposta invalida: "
fi
