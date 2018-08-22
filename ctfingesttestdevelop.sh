#sudo service start docker
#mkdir unfetter-discover
#cd unfetter-discover
#git clone https://github.com/unfetter-discover/unfetter.git
#git clone https://github.com/unfetter-discover/unfetter-ui.git
#git clone https://github.com/unfetter-discover/unfetter-store.git
#git clone https://github.com/unfetter-discover/stix2pattern.git
#cd unfetter
git checkout develop
#docker-compose -f docker-compose.yml -f docker-compose.deploy.yml up -d
cd ..
cd unfetter-store
cd unfetter-ctf-ingest
npm start


