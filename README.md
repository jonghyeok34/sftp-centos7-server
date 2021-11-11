

# 1. 실행

## cmd 환경에서 실행
```
build.cmd
```
## build.cmd 명령
  - `-v`로 폴더 추가 가능
```
docker run --name centos-sftp -e SFTP_USERS="<아이디>:<비밀번호>" -v %cd%/volumes/<폴더1>:/home/<아이디>/<폴더1>:Z -v %cd%/volumes/<폴더2>:/home/<아이디>/<폴더2>:Z  -p 22:22 -d fino-centos-sftp:local
```