import 'dart:async';
import 'package:flutter_bloc_sample/data/product_service.dart';
import '../models/product.dart';

class ProductBloc {
  final productStreamController =StreamController.broadcast();
  Stream get getStream => productStreamController.stream;
  List<Product> getAll(){
    return ProductService.getAll();
  }
}

final productBloc = ProductBloc();