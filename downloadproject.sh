mkdir unfetter-discover
cd unfetter-discover
git clone git@github.com:unfetter-discover/unfetter.git
#git clone git@github.com:unfetter-discover/unfetter-ui.git
#git clone git@github.com:unfetter-discover/unfetter-store.git
#git clone git@github.com:unfetter-discover/stix2pattern.git
cd unfetter
sudo service docker start
#docker-compose -f docker-compose.yml -f docker-compose.development.yml up
docker-compose up 
