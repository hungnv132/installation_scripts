OS_CODENAME=$(lsb_release -c --short)

sudo touch  /etc/apt/sources.list.d/pgdg.list
sudo bash -c "echo $repo >> /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-10 -y

