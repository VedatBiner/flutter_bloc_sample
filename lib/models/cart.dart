import 'package:flutter_bloc_sample/models/product.dart';

class Cart {
  Product product; //models 'deki product.dart dosyasından geliyor.
  int quantity;

  // Constructor oluşturalım
  Cart(this.product, this.quantity);
}