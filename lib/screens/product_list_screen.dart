import 'package:flutter/material.dart';
import 'package:flutter_bloc_sample/blocs/cart_bloc.dart';
import 'package:flutter_bloc_sample/blocs/product_bloc.dart';
import '../models/cart.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alışveriş"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            // Ekran yönlendirmesi
            onPressed: () => Navigator.pushNamed(context, "/cart"),
          )
        ],
      ),
      body: buildProductList(),
    );
  }

  buildProductList() {
   return StreamBuilder(
      initialData: productBloc.getAll(),
      stream: productBloc.getStream,
      builder: (context, snapshot){ // snapshot en son gelen görünüm değeridir.
        return snapshot.hasData
          ? buildProductListItems(snapshot)
          : const Center(child: Text("Data Yok"),);
      },
    );
  }

  buildProductListItems(AsyncSnapshot snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, index){
        final list = snapshot.data;
        return ListTile(
          title: Text(list[index].name),
          subtitle: Text(list[index].price.toString()),
          trailing: IconButton( // sepete ekleme butonu
            icon: const Icon(Icons.add_shopping_cart),
            onPressed: () {
              cartBloc.addToCart(Cart(list[index],1));
            },
          ),
        );
      }
    );
  }
}



