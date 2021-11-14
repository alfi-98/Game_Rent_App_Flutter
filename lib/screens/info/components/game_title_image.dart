import 'package:flutter/material.dart';
import 'package:game_rent/models/product.dart';

import '../../../constant.dart';

class GameTitleWithImage extends StatelessWidget {
  const GameTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Rent Details",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "Asking Price\n",
                  children: [
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Color(0xFF46c41c),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fitWidth,
                ),
              )
            ]),
          ]),
    );
  }
}
