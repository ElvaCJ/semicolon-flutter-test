void main() {
  // 숙제1 : 연산, 내장함수 연습
  // 1-1) input 인자 정수를 3개를 받아서 평균값을 계산하고 반환하는 함수
  double Average(int a, b, c) {
    return (a + b + c) / 3;
  }

  print(Average(1, 2, 3));
  // 1-2) input 인자 정수를 3개를 받아서 모두 곱한 값을 반환하는 함수
  num MultiplyAll(int a, b, c) {
    return a * b * c;
  }

  print(MultiplyAll(1, 2, 3));

  // 1-3) input 인자 list를 1개 받아서 내부값이 2배 값이 되도록 계산하고 반환하는 함수
  List DoubleList(List<int> list) {
    List<int> result = list.map((e) => e * 2).toList();
    return result.toList();
  }

  print(DoubleList([1, 2, 3]));

  // 숙제2 : Map 형식 연습
  // 2-1) 'Customer'라는 이름을 가진 Map 형식 데이터를 선언하고, 필드는 name(Str), address(Str), phone(int), age(int)로 설정한다. (value값은 임의로 설정하고 print해본다)
  // 필드 중 한개의 value를 재할당하고 print해본다.
  Map<String, dynamic> customer1 = {
    'name': 'John Doe',
    'address': '123 Main Street',
    'phone': 1234567890,
    'age': 30
  };

  print(customer1);

  customer1['name'] = 'Chanjoo Park';
  print(customer1);
}
