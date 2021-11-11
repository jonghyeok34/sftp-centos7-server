docker build -t fino-centos-sftp:local . 
echo $current_path
docker rm -f centos-sftp

docker run  --name centos-sftp -e SFTP_USERS="dev-lsfile:dev-lsfile00" -v %cd%/volumes/attach:/home/dev-lsfile/attach:Z -v %cd%/volumes/file:/home/dev-lsfile/file:Z  -p 22:22 -d fino-centos-sftp:local

docker logs -f centos-sftp