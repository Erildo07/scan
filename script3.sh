#!/bin/bash

echo "Digite  o nome do serviço"
read serv

value=`sudo service ssh status | grep "Active" | cut -d"(" -f1 | cut -d":" -f2 | tr -d " "`

if [[ $value == "inactive" ]]; then
	echo "O serviço" $serv "está inativo"
else 
        echo "O serviço" $serv "está ativo!" 

fi
