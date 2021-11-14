import 'package:flutter/material.dart';
import 'package:game_rent/constant.dart';
import 'package:game_rent/models/product.dart';

import 'description.dart';
import 'game_title_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                        top: size.height * 0.12,
                        left: kDefaultPaddin,
                        right: kDefaultPaddin),
                    decoration: BoxDecoration(
                      color: Color(0xFF242424),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Description(product: product),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: kDefaultPaddin / 2,
                                      vertical: kDefaultPaddin / 2),
                                  child: Text("Negotiation Amount",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .apply(color: Colors.white)),
                                ),
                                Cart(product: product),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: kDefaultPaddin),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: kDefaultPaddin),
                                        height: 50,
                                        width: 58,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            border: Border.all(
                                                color: Color(0xFF46c41c))),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.shopping_cart,
                                              color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        child: FlatButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18)),
                                          onPressed: () {},
                                          color: Color(0xFF46c41c),
                                          child: Text(
                                            "Place Order".toUpperCase(),
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )),
                GameTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Cart extends StatelessWidget {
  const Cart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            buildOutlineButton(
              icon: Icons.remove,
              press: () {},
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
              child: Text("\$${product.price}",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .apply(color: Color(0xFF46c41c))),
            ),
            buildOutlineButton(
              icon: Icons.add,
              press: () {},
            ),
          ],
        ),
      ],
    );
  }

  SizedBox buildOutlineButton(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        borderSide: BorderSide(
          color: Colors.white,
        ),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        onPressed: press,
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
