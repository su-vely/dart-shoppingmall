import 'dart:io';
import 'package:dart_shoppingmall/product.dart';

// 상품 목록
class ShoppingMall {
  List<Product> products = [
    Product('shirt', 45000),
    Product('dress', 30000),
    Product('short tee', 35000),
    Product('wear short', 38000),
    Product('socks', 5000),
  ];

  int totalPrice = 0;

  // 1. 판매하는 상품 목록을 볼 수 있는 기능
  void showProducts() {
    for (int i = 0; i < products.length; i++) {
      print('${products[i].name} / ${products[i].price}원');
    }
  }

  // 2. 상품을 장바구니에 담을 수 있는 기능
  void addToCart() {
    print('상품 이름을 입력해 주세요 !');
    String? productName = stdin.readLineSync();

    if (productName == null || productName.trim().isEmpty) {
      print('입력값이 올바르지 않아요 !');
      return;
    }

    // 입력한 상품이 상품 목록에 있는지 확인
    Product? selectedProduct;
    for (Product product in products) {
      if (product.name == productName) {
        selectedProduct = product;
        break;
      }
    }

    if (selectedProduct == null) {
      print('입력값이 올바르지 않아요 !');
      return;
    }

    // 상품 개수 입력 받기
    print('상품 개수를 입력해 주세요 !');
    String? quantityInput = stdin.readLineSync();

    if (quantityInput == null || quantityInput.trim().isEmpty) {
      print('입력값이 올바르지 않아요 !');
      return;
    }

    try {
      int quantity = int.parse(quantityInput);

      if (quantity <= 0) {
        print('0개보다 많은 개수의 상품만 담을 수 있어요 !');
        return;
      }

      // 상품 가격 × 개수 = 해당 상품의 총 가격
      int itemTotal = selectedProduct.price * quantity;

      // 기존 장바구니 총액에 추가
      totalPrice += itemTotal;

      print('장바구니에 상품이 담겼어요 !');
    } catch (e) {
      print('입력값이 올바르지 않아요 !');
      return;
    }
  }

  // 3. 장바구니에 담은 상품들의 총 가격을 볼 수 있는 기능
  void showTotal() {
    print('\n장바구니에 $totalPrice원 어치를 담으셨네요 !\n');
  }
}
