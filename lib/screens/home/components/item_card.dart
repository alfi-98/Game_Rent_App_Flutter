import 'package:flutter/material.dart';
import 'package:game_rent/models/product.dart';

import '../../../constant.dart';

// ignore: camel_case_types
class itemCard extends StatelessWidget {
  final Product product;
  final void Function() press;

  const itemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            height: 180,
            width: 160,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: Image.asset(product.image),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xFF46c41c),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPaddin / 4, horizontal: kDefaultPaddin / 4),
              child: Text(
                product.title,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Spacer(),
          Text(
            "\$${product.price}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
