FROM ubuntu:18.04

# gives you a key which gives you access to the repository
RUN wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -

# gets the source,
RUN echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

RUN apt-get update -y

# install specific mongodb package
RUN apt-get install -y mongodb-org=3.2.20 # mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

# removes the existing mongod.conf file etc is a directory in the virtual machine
RUN rm /etc/mongod.conf

# linking the connection between the file, crating synced file between mongod.conf and /etc/mongod.conf
RUN sudo ln -s /home/ubuntu/environment/mongod.conf /etc/mongod.conf

# specify ports
EXPOSE 27017

# restarting so the new configuration is in place
RUN sudo systemctl restart mongod

# enabling mongod
RUN sudo systemctl enable mongod
