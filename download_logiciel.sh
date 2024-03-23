#!/bin/bash
is_package_installed() {
	dpkg -l "$1" > /dev/null
}

dl_apache() {
if ! is_package_installed apache2;then
	sudo apt install apache2
else
	echo "Apache est déjà installer"
fi
}
dl_mariadb() {
if ! is_package_installed mariadb-server;then
        sudo apt install mariadb-server
else 
        echo "MariaDB est déjà installer"
fi
}

dl_php() {
if ! is_package_installed phpmyadmin;then
	sudo apt install phpmyadmin
else
	echo "Php est déjà installer"
fi
}

dl_nodejs() {
if ! is_package_installed nodejs;then
	sudo apt install nodejs
else
	echo "Nodejs est déjà installer"
fi
}

dl_git() {
  if ! is_package_installed git;then
	echo "installation de git"
	sudo apt install git
  else
 	echo "Git est déjà installer"
  fi
}

install_all() {
dl_apache
dl_php
dl_mariadb
dl_nodejs
dl_git
}

install_all
