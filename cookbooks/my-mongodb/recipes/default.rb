bash 'install_mongodb' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 68818C72E52529D4
	echo "deb http://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
	apt-get update
	apt-get install -y mongodb-org
	systemctl start mongod
	systemctl enable mongod
	EOH
end
