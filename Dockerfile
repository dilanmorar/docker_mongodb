FROM mongo:3.6.18-xenial

# removes the existing mongod.conf file etc is a directory in the virtual machine
# RUN rm /etc/mongod.conf

# linking the connection between the file, crating synced file between mongod.conf and /etc/mongod.conf
RUN ln -s /home/ubuntu/environment/mongod.conf /etc/mongod.conf

# specify ports
EXPOSE 27017

# restarting so the new configuration is in place
# RUN systemctl restart mongod

# enabling mongod
# RUN systemctl enable mongod

CMD ["mongod"]

 
