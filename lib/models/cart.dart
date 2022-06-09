import 'package:flutter_bloc_sample/models/product.dart';

class Cart {
  Product product;
  int quantity;

  // Constructor
  Cart(this.product, this.quantity);
}