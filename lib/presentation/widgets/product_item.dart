import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 10,
            spreadRadius: 2,
            color: Colors.black26,
            offset: Offset(0, 5))
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              trailing: const Icon(Icons.shopping_cart),
              leading: Icon(
                product.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
              backgroundColor: Colors.black54,
              title: Text(
                product.title,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            )),
      ),
    );
  }
}
