import 'package:dart_shoppingmall/product.dart';

class ShoppingMall {
  List<Product> products = [
    Product('shirt', 45000),
    Product('onepiece', 30000),
    Product('tee', 35000),
    Product('jeen', 38000),
    Product('s', 5000),
  ];
  int totalPrice = 0;

  void showProducts() {
    // 상품 목록 출력하기
    print('showProducts 호출됨');
  }

  void addToCart() {
    // 상품을 장바구니에 담기
    print('addToCart 호출됨');
  }

  void showTotal() {
    // 장바구니에 담은 상품의 총 가격 출력하기
    print('showTotal 호출됨');
  }
}
