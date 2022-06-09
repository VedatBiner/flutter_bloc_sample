import 'dart:async';
import '../data/cart_service.dart';
import '../models/cart.dart';

class CartBloc{
  final cartStreamController = StreamController.broadcast();

  // getter
  Stream get getStream => cartStreamController.stream;

  void addToCart(Cart item){
    CartService.addToCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  void removeFromCart(Cart item){
    CartService.removeFromCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  List<Cart> getAll(){
    return CartService.getCart();
  }
}

final cartBloc = CartBloc();