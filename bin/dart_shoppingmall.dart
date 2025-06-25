import 'dart:io';

import 'package:dart_shoppingmall/dart_shoppingmall.dart' as dart_shoppingmall;

void main(List<String> arguments) {
  while (true) {
    print('-' * 92);
    print(
      '[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료',
    );
    print('-' * 92);
    // 사용자 입력 받기
    String? userInput = stdin.readLineSync();
    if (userInput == '1') {
      // TODO 사용자가 입력한 값이 1이라면 상품 목록 출력하기
      print('상품 목록 출력하기');
    } else if (userInput == '2') {
      // TODO 사용자 입력 값이 2라면 장바구니에 담기
      print('장바구니에 담기');
    } else if (userInput == '3') {
      // TODO 사용자 입력 값이 3이라면 장바구니 가격 출력
      print('장바구니에 담긴 상품의 총 가격 보기');
    } else if (userInput == '4') {
      // 사용자 입력 값이 4라면 종료
      print('프로그램 종료');
      return;
    } else {
      print('올바른 입력값이 아닙니다');
    }
  }
}
