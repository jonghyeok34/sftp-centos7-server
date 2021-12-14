# 0. 필요성

- 기존 : 동일 `dev 파일서버`에서 sftp 테스트 진행 -> 서로 다른 개발이 충돌 발생
- 변경 : docker로 `로컬`에서 sftp 테스트 진행


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
