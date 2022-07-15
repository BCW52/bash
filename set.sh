cd /opt

		git clone https://github.com/knadh/listmonk.git
      sudo apt install wget ca-certificates
      sudo apt update 
      sudo apt upgrade 
      sudo apt install docker docker-compose
      sudo apt install postgresql postgresql-contrib 
	  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - 
	  sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
	  sudo apt update 
	  sudo apt install postgresql postgresql-contrib
	        sudo groupadd docker 
      sudo gpasswd -a root docker
	  cd /opt
      sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
      sudo chmod +x /usr/local/bin/docker-compose
	 git clone https://github.com/mailcow/mailcow-dockerized
cd mailcow-dockerized
./generate_config.sh
docker-compose pull
docker-compose up -d
	        cd listmonk
      sudo chmod +x install-prod.sh
      ./install-prod.sh
