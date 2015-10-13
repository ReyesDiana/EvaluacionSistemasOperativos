#!/bin/bash

echo 'Introduce grupo 1=Rector 2=Administrativos 3=Profesores 4=Alumnos'
read gr
case $gr in 
1*)
	sudo mkdir /home/Rector
       	sudo groupadd Rector
	echo 'Introduce el nombre del usuario'
	read usr
       	sudo useradd $usr -d /home/Rector/$usr -m -g Rector
	sudo chmod -R 740 /home/Rector/$usr
	echo 'Introduce una contraseña para el usuarios' $usr
	sudo passwd $usr;;
2*)
	sudo mkdir /home/Administrativos
       	sudo groupadd Administrativos 
	echo 'Introduce el nombre del usuario'
	read usr
       	sudo useradd $usr -d /home/Administrativos/$usr -m -g Administrativos
	sudo chmod -R 744 /home/Administrativos/$usr
	echo 'Introduce una contraseña para el usuario' $usr
	sudo passwd $usr;;
3*)
	sudo mkdir /home/Alumnos
       	sudo groupadd Alumnos
	echo 'Introduce el nombre del usuario'
	read usr
       	sudo useradd $usr -d /home/Alumnos/$usr -m -g Alumnos
	sudo chmod -R 744 /home/Alumnos/$usr
	echo 'Introduce una contraseña para el usuario' $usr
	sudo passwd $usr;;
4*)
	sudo mkdir /home/Profesores
       	sudo groupadd Profesores
	echo 'Introduce el nombre del usuario'
	read usr
       	sudo useradd $usr -d /home/Profesores/$usr -m -g Profesores
	sudo chmod -R 744 /home/Profesores/$usr
	echo 'Introduce una contraseña para el usuario' $usr
	sudo passwd $usr;;
*)
esac

