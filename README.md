# shell-script

#### initGit.sh 사용법
>(레포지 폴더로 사용할 곳 터미널 혹은 커맨드 창에서) initGit.sh [git 주소]

#### 터미널 명령어
- rm -rf (forder/file name)
> rm: remove 줄임말로써 삭제 명령어<br/>
> -r: recursive하게 지운다는 뜻으로, 폴더를 지우거나 폴더 안 파일을 전부 지울 때 필요<br/>
> -f: 지울 때 진짜로 지울 것인지 확인하는 작업 없이 강제로 지우는 것을 의미<br/>
> ex) rm -rf ./test<br/>

- lsof -i :[port#]
> lsof: list open files 줄임말로써 시스템에서 열린 파일 목록을 알려주는 명령어이다. 사용하는 프로세스와 디바이스 정보 등 정보를 출력해준다.<br/>
> -i :[port#]: 특정 포트 번호를 명시하는 목적이다. 해당 옵션을 사용하지 않는다면 모든 프로세스 목록이 출력된다.<br/>
> ex) lsof -i :3000<br/>
