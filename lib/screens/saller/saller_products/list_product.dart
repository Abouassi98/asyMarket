import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:asyMarket/constant/decoration.dart';
import 'package:asyMarket/models/product.dart';
import 'package:asyMarket/screens/saller/add_new_product/add_new_product.dart';
import 'package:asyMarket/widgets/image_network.dart';

class ListProduct extends StatelessWidget {
  final Product product;
  ListProduct({@required this.product});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => AddNewProduct(product: product),
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          boxShadow: [shadow],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: <Widget>[
            ImageNetwork(
              image: product.productImages.first,
              height: size.height / 3,
              width: size.width,
            ),
            SizedBox(height: 4.0),
            Text(
              product.productName,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Price',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  product.price,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Quantity',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  product.quantity,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
