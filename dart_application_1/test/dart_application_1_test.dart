import 'package:dart_application_1/dart_application_1.dart';
import 'package:test/test.dart';

void main() {
  // 문제 1 더 큰 수를 찾는 함수
  int num1 = 1;
  int num2 = 2;
  print("$num1과 $num2 중에 더 큰 수는 ${"여기에 함수를 작성하세요"}입니다!");

  // 문제 2 지정된 범위 합을 구하는 함수
  int startNum = 3;
  int endNum = 10;
  print("[$startNum, $endNum] 범위의 숫자 합은 ${"여기에 함수를 작성하세요"}");

  // 문제 3 sec 시간을 다른 형식으로 바꿔 출력하는 함수
  int secInput = 4500;
  secToTime(secInput);

  // 문제 4 리스트 데이터와 반복문 연습
  final List<int> nums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(reversedList(nums));

  // 문제 5
  List<User> users = [
    User("Tom", 15),
    User("Jason", 21),
    User("Siri", 46),
    User("Choi", 33),
    User("Park", 55),
  ];

  // 하단의 문제를 읽고 평균 나이, 가장 나이가 많은 회원을 찾아서 출력해보세요
  // 계산 코드는 여기에!
}

/*  문제 1 
두 수가 주어졌을 때 더 큰 수를 반환하는 함수를 작성하자
해당 함수의 매개변수는 정수 두개이다
해당 함수의 반환값은 매개변수로 받은 두 수 중에서 더 큰 수 이다
아래 Base Code의 main함수 내에 선언된 num1과 num2의 값을 바꿔보며 프로그램이 잘 동작하는 지 확인하자
*/
//함수는 여기에 작성하세요

/*  문제 2
닫힌 정수 범위가 주어졌을 때 해당 범위의 숫자들을 모두 더하는 함수를 작성하자
해당 함수의 매개변수는 정수 두개로 각각 범위의 시작과 끝 숫자를 나타낸다
해당 함수의 반환값은 해당 범위의 숫자들을 모두 더한 정수 값이다
아래 Base Code의 main함수 내에 선언된 startNum과 endNum의 값을 바꿔보며 프로그램이 잘 작동하는 지 확인하자
*/
//함수는 여기에 작성하세요

/* 문제 3  
초가 주어졌을 때 이를 시:분:초 형태로 출력하는 함수를 완성하자
해당 함수의 매개변수는 초를 의미하는 정수이다
해당 함수의 반환값은 없다
해당 함수는 초를 시:분:초 형태로 변환해서 출력한다.
아래 Base Code의 main함수 내에 선언된 secInput값을 바꿔보며 프로그램이 잘 작동하는 지를 확인하자
*/
void secToTime(int secInput) {
  // 여기에 코드를 작성해서 함수를 완성하세요

  print("${"~~"}초는 ${"~~"}:${"~~"}:${"~~"}입니다!");
}

/* 문제4
main함수에서 주어진 길이가 10짜리 리스트를 역순으로 만들어서 출력하는 함수를 만들고 
void main(){}에서 정답을 출력해보자
*/
List<int> reversedList(List<int> nums) {
  List<int> reversedList = [];

  return reversedList;
}

/* 문제5 
회원정보를 위한 class User를 정의한다
리스트에는 User class를 이용해서 사용자 정보(이름, 나이)가 저장되어있다.
해당 리스트에 저장된 사용자정보를 분석해서 평균 나이를 계산해서 출력해본다
그리고 나이가 가장 많은 회원의 이름을 출력해본다
회원정보를 위한 class User는 회원의 이름과 나이 정보를 저장한다
 */
class User {
  String name;
  int age;

  User(this.name, this.age);
}
