#! /bin/bash

# 변수 할당할 때 = 양 옆으로 띄어쓰기 하면 안된다.
# 전역 변수 지정
string="hello world"
echo ${string}

# 지역 변수 테스트 함수
string_test() {
	#전역 변수와 동일하게 사용함. 만약 local을 뺀다면 전역 변수에 덮어 씌워지게 됨
	local string="local val"
	echo ${string}
}

# 지역 변수 테스트 함수 호출
string_test
# 지역 변수 테스트 함수에서 동일한 변수 명을 사용했지만 값이 변경되지 않음
echo ${string}

# 환경 변수 선언
export hello_world="hello world..."
# 외부 스크립트 파일 호출
./export_test.sh
