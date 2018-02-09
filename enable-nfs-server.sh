#sudo apt install nfs-kernel-server

#You can configure the directories to be exported by adding them to the /etc/exports file. For example:

#/ubuntu  *(ro,sync,no_root_squash)

if [ ! -d /var/nfs ] ; then sudo mkdir /var/nfs ; fi

sudo chown nobody:nogroup /var/nfs 
sudo echo "/var/nfs  *(ro,sync,no_root_squash)" > /etc/exports 
sudo exportfs -a

#You can replace * with one of the hostname formats. Make the hostname declaration as specific as possible so unwanted systems cannot access the NFS mount.

#To start the NFS server, you can run the following command at a terminal prompt:

sudo service nfs-kernel-server start
