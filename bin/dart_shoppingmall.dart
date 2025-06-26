import 'dart:io';
import 'package:dart_shoppingmall/shopping_mall.dart';

void main(List<String> arguments) {
  ShoppingMall mall = ShoppingMall();
  while (true) {
    print('-' * 92);
    print(
      '[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료',
    );
    print('-' * 92);
    // 사용자 입력 받기
    String? userInput = stdin.readLineSync();
    if (userInput == '1') {
      mall.showProducts();
    } else if (userInput == '2') {
      mall.addToCart();
      print('장바구니에 담기');
    } else if (userInput == '3') {
      mall.showTotal();
    } else if (userInput == '4') {
      // 사용자 입력 값이 4라면 종료
      print('이용해 주셔서 감사합니다 ~ 안녕히 가세요 !');
      return;
    } else {
      print('올바른 입력값이 아닙니다');
    }
  }
}
