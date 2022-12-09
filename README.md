# TO TEST

docker build -t test .  
docker rm -f test  
docker run -d -p 3000:3000 -p 2222:2222 --name test test  
docker logs test  

## TEST SSH  

ssh root@localhost -p 2222  
The authenticity of host '[localhost]:2222 ([::1]:2222)' can't be established.
ED25519 key fingerprint is SHA256:Yg7CbPxn5asJenRbJfhdXutPjCcJjAlpuKtFtZ/5mkM.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '[localhost]:2222' (ED25519) to the list of known hosts.
root@localhost's password:
Welcome to Alpine!

The Alpine Wiki contains a large amount of how-to guides and general
information about administrating Alpine systems.
See <http://wiki.alpinelinux.org/>.

You can setup the system with the command: setup-alpine

You may change this message by editing /etc/motd.

Note: The root password need to be be Docker!.
This is only a sample and will not be maintained.
