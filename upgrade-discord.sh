wget -P ~/Downloads https://discord.com/api/download/stable?platform=linux&format=tar.gz 
tar –xvzf ~/Downloads/discord*.tar.gz
sudo rmdir /opt/discord
sudo mv ~/Downloads/discord* /opt
mv /opt/discord* /opt/discord
rm ~/Downloads/discord*.tar.gz
/opt/Discord/bin/Discord
