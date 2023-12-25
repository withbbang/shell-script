#! /bin/bash
#위에 글자는 필수로 고정

# 줄바꿈 출력
echo "hello world"

# 줄 안바꿈 출력
printf "hello world"
printf "%s %s" hello world


# 함수 1
string_test_1() {
	echo "string test"
}

# 함수 2
function string_test_2() {
	echo "string test 2"
	echo "인자값: ${@}"
}

# 함수 호출은 선언보다 무조건 뒤에 있어야 된다
string_test_1
string_test_2

# 함수에 인자값 전달하기(공백으로 띄어서 2개의 인자 값을 넘김)
string_test_2 "hello" "world"

