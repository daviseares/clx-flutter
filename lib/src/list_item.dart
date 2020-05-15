import 'package:clx/src/product_details.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String tag;

  const ListItem({Key key, this.tag = " "}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text("MacBook Pro 15'"),
        subtitle: Text("R\$ 11.000,00"),
        leading: Hero(
          tag: tag,
          child: Image.network(
              "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/macbook-air-space-gray-select-201810?wid=892&hei=820&&qlt=80&.v=1541713862468"),
        ),
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ProductDetail(tag: tag)));
        },
        trailing: IconButton(
          icon: Icon(
            Icons.shopping_basket,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {},
        ));
  }
}
