import 'package:dart_application_1/dart_application_1.dart';
import 'package:test/test.dart';

void main() {
  // 문제1 출력
  print(add(2, mul(3, /*  빈칸  */))); 
  print(mul(add(/*  빈칸  */, 3), 5)); 

  // 문제2 출력
  
  // 문제3 출력

  // 문제4 출력
  final int num = 4;
  int temp = /*  빈칸  */;
  
  for (int i = 1; i <= /*  빈칸  */; i++) {
    temp = temp * /*  빈칸  */;
  }
  print(temp);


  // 문제 5 조건 및 출력
  List<int> values = [3, 4, 16, 7, 5, 8, 11, 35, -3, 88, 34, 74];
  int max = values[/*  빈칸  */];

  for (int i = 0; i < values./*  빈칸  */ ; i++) {
    if (max < values[/*  빈칸  */]) {
      max = values[i];
    }
  }
  
  print(max);
}

/* 문제 1 함수정의
  덧셈을 수행하는 함수와 곱셈을 수행하는 함수를 정의한다
  덧셈 함수와 곱셈 함수를 이용해서 "2 + (3 * 5)"를 계산해본다
  덧셈 함수와 곱셈 함수를 이용해서 "(2 + 3) * 5"를 계산해본다
  */
int add(int a, int b) {
  return /*  빈칸  */ + b;
}

int mul(int a, int b) {
  return a /*  빈칸  */ b;
}

/* 문제 2 Optional positional 매개변수와 Named 매개변수
- 건물의 크기는 (층수 x 한 층의 높이 x 한 층의 가로길이 x 한 층의 세로길이)로 정의된다
- 따라서 건물의 크기를 계산하는 함수는 매개변수로 가로길이(width) 세로길이(depth) 높이(height) 층수(floors)를 받는다
- 이때 모든 건물은 가로길이와 세로길이가 필수적임으로 width와 depth는 required positional 매개변수이다
- height와 floors는 default optional positional 매개변수로 각각의 default값은 2m와 1층으로 한다
- 해당 함수를 정의해서 가로길이가 10m 세로길이가 20m 높이가 2.2m 높이가 20층인 건물의 크기를 계산해보자
- 해당 함수를 Named 매개변수를 사용해서 다시 정의해보자
 */
double sizeOfBuilding(double width, double depth, [double height=/*  빈칸  */, int floors=/*  빈칸  */]) {
  return width * /*  빈칸  */ * height * /*  빈칸  */;
}

/* 문제 3  조건문 연습하기
- 대학교에서 점수에 따라 절대평가로서 학점을 주는 함수를 작성한다
- 해당 함수는 int score를 매개변수로 한다
- 해당 함수는 if문을 사용해서 90 ~ 100점은 A 80 ~ 89점은 B 70 ~ 79점은 C 60 ~ 69점은 D 나머지는 F를 출력한다
- main함수에서 score(점수)을 호출했을 때 적절한 학점이 출력됨을 확인해보자
- 해당 문제의 난이도가 낮은 경우 if문만으로 해당 함수를 작성해보도록 하자
- 위 함수를 if문이 아닌 switch문 반을 이용해서 작성해보도록 하자
*/
void score2Grade(int score) {
  if (/*  빈칸  */ <= score) {
    print("A");
  } else if (80 <= score) {
    print("/*  빈칸  */");
  } else if (70 <= score) {
    print("C");
  } else if (/*  빈칸  */ <= score) {
    print("D");
  } else {
    print("/*  빈칸  */");
  }
}

/* 문제4 반복문(1)
반복문을 사용하여 팩토리얼을 계산해보자
 */

/* 문제5 반복문(2)
List에 저장된 값을 선형탐색하여 최대값을 찾아보자
 */

// 문제 4, 5는 void main 안에서 작성해봅니다~