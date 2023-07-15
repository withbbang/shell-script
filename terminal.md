# 터미널 명령어

- rm [option] [forder/file name]

  > rm: remove 줄임말로써 삭제 명령어<br/>
  > -r: recursive하게 지운다는 뜻으로, 폴더를 지우거나 폴더 안 파일을 전부 지울 때 필요<br/>
  > -f: 지울 때 진짜로 지울 것인지 확인하는 작업 없이 강제로 지우는 것을 의미<br/>
  > ex) **현재 경로에 test 폴더를 리컬시브하게 강제로 지워라**<br/>
  > --> rm -rf ./test<br/>

- lsof -i :[port#]

  > lsof: list open files 줄임말로써 시스템에서 열린 프로세스 목록을 알려주는 명령어이다. 사용하는 프로세스와 디바이스 정보 등 정보를 출력해준다.<br/>
  > -i :[port#]: 특정 포트 번호를 명시하는 목적이다. 해당 옵션을 사용하지 않는다면 모든 프로세스 목록이 출력된다.<br/>
  > ex) **lsof -i :3000**<br/>

- ssh -i [user]@[ip]

  > ssh: secure shell의 약자로 원격 서버에 접속하기 위한 명령어이다.<br/>
  > -i: 비공개키 파일을 사용하여 접속한다.<br/>
  > ex) **ssh ./test.pem ubuntu@192.168.0.0**<br/>
  > -p: 포트 번호를 지정하여 접속할 수 있다.<br/>
  > ex) **ssh -p 3000 ubuntu@192.168.0.0**<br/>

- ls -l == ll

  > ls: list의 줄임말로써 파일 목록 조회하는 명령어이다.<br/>
  > ll: ls에서 -l 옵션이 기본적으로 들어가 있는 명령어이다.<br/>
  > -l: 권한, 소유자, 갱신일 확인할 수 있는 옵션<br/>
  > -a: 숨겨진 파일까지 볼 수 있는 옵션<br/>

- chmod [mode] [file]

  > chmod: '**ch**ange', '**mod**e'의 조합된 약자로 파일의 권한을 변경할 수 있는 명령어이다.<br/>
  > mode:<br/>
  > > 파일의 권한을 사용자에 따라 지정하는 옵션<br/>
  > > 3개의 사용자 유형이 있다 [파일 소유자, 파일 소유 그룹, 그 외 권한자]<br/>
  > > 각각 8진수의 값으로 읽기, 쓰기, 실행 권한이 사용자마다 따로 부여될 수 있다.<br/>
  > > rwx rwx rwx -> 421 421 421 (r: read, w: write, x: execute)<br/>
  > > ex) **test.txt 파일 소유자에게만 읽기 권한을 주어라.**<br/>
  > > --> chmod 400 test.txt<br/>

- tail [option] [file]

  > tail: 파일의 마지막 행을 기준으로 지정한 행까지의 파일 내용 일부를 출력해주는 명령어이다.<br/>
  > **-f: tail을 종료하지 않고 파일의 업데이트 내용을 실시간으로 계속 출력하는 옵션**<br/>
  > -n: 파일의 마지막줄부터 지정한 라인수까지의 내용을 출력하는 옵션<br/>
  > -q : 파일의 헤더와 상단의 파일 이름을 출력하지 않고 내용만 출력하는 옵션<br/>
  > -v : 출력하기전에 파일의 헤더와 이름 먼저 출력한 후 파일의 내용을 출력하는 옵션<br/>
  > ex) **파일의 헤더와 이름 그리고 10번째 줄까지 출력해라.**<br/>
  > --> tail -v -n 10 fileName<br/>

- grep [option] [pattern] [파일명]

  > grep: 특정 파일에서 지정한 문자열이나 정규표현식을 포함한 행을 출력해주는 명령어이다.<br/>
  > option:<br/>
  > > -c : 일치하는 행의 수를 출력하는 옵션<br/>
  > > **-i : 대소문자를 구별하지 않는 옵션**<br/>
  > > -v : 일치하지 않는 행만 출력하는 옵션<br/>
  > > -n : 포함된 행의 번호를 함께 출력하는 옵션<br/>
  > > -l : 패턴이 포함된 파일의 이름을 출력하는 옵션<br/>
  > > **-w : 단어와 일치하는 행만 출력하는 옵션**<br/>
  > > -x : 라인과 일치하는 행만 출력하는 옵션<br/>
  > > -r : 하위 디렉토리를 포함한 모든 파일에서 검색하는 옵션<br/>
  > > -m 숫자 : 최대로 표시될 수 있는 결과를 제한하는 옵션<br/>
  > > -E : 찾을 패턴을 정규 표현식으로 찾는 옵션<br/>
  > > -F : 찾을 패턴을 문자열로 찾는 옵션<br/>
  >
  > ex) **[문자열로 찾기]** <br/>
  > > **특정 파일에서 'error' 문자열 찾기**<br/>
  > > --> grep 'error' fileName.txt<br/>
  > > **여러개의 파일에서 'error' 문자열 찾기**<br/>
  > > --> grep 'error' fileName1.txt fileName2.txt<br/>
  > > **현재 디렉토리내에 있는 모든 파일에서 'error' 문자열 찾기**<br/>
  > > --> grep 'error' \*<br/>
  > > **특정 확장자를 가진 모든 파일에서 'error' 문자열 찾기**<br/>
  > > --> grep 'error' \*.log<br/>
  >
  > ex) **[정규표현식으로 찾기]** <br/>
  > > **특정 파일에서 ab 문자열이 포함된 행을 찾기**<br/>
  > > --> grep '^[ab]' fileName.txt<br/>
  > > **특정 파일에서 a로 시작하는 모든 단어를 찾기**<br/>
  > > --> grep 'a\*' fileName.txt<br/>
  > > **특정 파일에서 a로 시작하고 z로 끝나는 5자리 단어를 찾기**<br/>
  > > --> grep 'a...z' fileName.txt<br/>
  > > **특정 파일에서 a,b,c로 시작하는 단어를 모두 찾기**<br/>
  > > --> grep [a-c] fileName.txt<br/>
  > > **특정 파일에서 apple 또는 Apple로 시작하는 단어를 모두 찾기**<br/>
  > > --> grep [aA]pple fileName.txt<br/>
  > > **특정 파일에서 a나 b로 시작되는 모든 행을 찾기**<br/>
  > > --> grep '^[ab]' fileName.txt<br/>
  > > **특정 파일에서 apple로 시작되고 0나 9의 숫자로 끝나로 시작되는 모든 행을 찾기**<br/>
  > > --> grep 'apple'[0-9] fileName.txt<br/>
  >
  > ex) **실시간 mylog 로그에서 대소문자를 구분하지 않고 abc와 일치 하는 행만 출력해라.**<br/>
  > --> tail -f mylog.log | grep -i -w 'abc'<br/>
  > ex) **특정 파일에서 여러개 문자열 찾기**<br/>
  > --> cat mylog.txt | grep 'Apple' | grep 'Banana'<br/>

- tail [option] [file]

  > tail: 파일의 마지막 행을 기준으로 지정한 행까지의 파일 내용 일부를 출력해주는 명령어이다.<br/>
  > **-f: tail을 종료하지 않고 파일의 업데이트 내용을 실시간으로 계속 출력하는 옵션**<br/>
  > -n: 파일의 마지막줄부터 지정한 라인수까지의 내용을 출력하는 옵션<br/>
  > -q : 파일의 헤더와 상단의 파일 이름을 출력하지 않고 내용만 출력하는 옵션<br/>
  > -v : 출력하기전에 파일의 헤더와 이름 먼저 출력한 후 파일의 내용을 출력하는 옵션<br/>
  > ex) **파일의 헤더와 이름 그리고 10번째 줄까지 출력해라.**<br/>
  > --> tail -v -n 10 fileName<br/>

- cp [option] [origin file/folder] [new file/folder]

  > cp: copy의 약자로 파일이나 폴더를 복사하는 명령어이다.<br/>
  > ex) **cp old_file new_file**<br/>
  > ex) **cp ./old_file ../some_directory/new_file**<br/>
  > **-r: 디렉터리를 복사할 때 꼭 추가해야할 옵션**<br/>
  > ex) cp -r old_directory new_directory<br/>
  > ex) 여러개를 한번에 복사하고 싶을 때 / cp [복사 대상1] [복사 대상2] [복사 대상3] ..... [복사 될 경로]<br/>
  > --> cp test1.txt test2.txt test3.txt ../some_directory/<br/>
  > ex) 현재 위치에 있는 모든 파일 복사 / cp * [복사 될 경로]
  > --> cp * ../some_directory/<br/>

- mv [option] [directory/file name to be moved] [destination directory]

  > mv: move의 약자로 파일이나 디렉토리를 이동하는 명령어이다.<br/>
  > ex) **mv test.txt some_directory**<br/>
  > ex) 현재 test 디렉토리/파일 이름을 testest로 바꾸어라<br/>
  > --> mv test testest<br/>
  > ex) /app/bin/logs 디렉토리의 log.txt 파일을 /app/dw 디렉토리로 이동<br/>
  > --> mv /app/bin/logs/log.txt /app/dw<br/>
  > ** -r: recursive하게 옮긴다는 뜻으로, 폴더 안 파일을 전부 옮길 때 필요<**br/>

- zip [option] [zipFileName.zip] [destination directory]

  > zip: 파일이나 디렉토리를 압축하는 명령어이다.<br/>
  > ex) /path/to 경로에 있는 dir 디렉토리를 compressed의 이름으로 압축해라.<br/>
  > --> **zip -r compressed.zip /path/to/dir**<br/>
  > ex) dir1, dir2, file3 세 개의 소스를 압축해라.<br/>
  > --> zip -r compressed.zip ./dir1 ./dir2 ./file3<br/>
  > ex) 이미 존재하는 compressed.zip 파일에 새로운 파일 추가.<br/>
  > --> zip compressed.zip /path/to/file<br/>
  > ex) -x 옵션을 사용하며 .git 폴더는 제외하고 압축해라. (.git 앞뒤에 * 주의)<br/>
  > --> zip -9 -r compressed.zip /path/to/dir -x '*.git*'
  > ** -r: recursive하게 압축한다는 뜻으로, 폴더 안 파일을 전부 압축할 때 필요**<br/>
  > -#[number]: 압축 수준을 나타내는 옵션으로 높을 수록 수준이 높다.<br/>
  > -e: zip파일에 암호 설정<br/>

- unzip [option] [zipFileName.zip]
  > zip: zip파일의 압축을 푸는하는 명령어이다.<br/>
  > ex) 현재 디렉터리에 압축을 풀어라.<br/>
  > --> **unzip compressed.zip**<br/>
  > -l: 압축 해제하지 않고 압축파일 내 목록만 출력<br/>
  > ex) unzip -l compressed.zip<br/>
  > -d: 지정한 디렉터리에 압축 해제<br/>
  > ex) unzip compressed.zip -d /path/to/some_directory<br/>
