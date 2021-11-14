import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price, id;
  final Color color;
  final String description;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    this.description:
        "This Game introduced to the possible  opportunities \nin making  an open world game. This First \nperson game  soon inspired other game developers \nto come up with similar  approaches. With an \nopen world experience and an  amasing story \nline, this became the game of the year. ",
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      image: "assets/images/gta.jpeg",
      title: "GTA V",
      price: 1500,
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      image: "assets/images/rdr2.png",
      title: "RDR 2",
      price: 2000,
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      image: "assets/images/gow.jpeg",
      title: "God Of War",
      price: 1700,
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      image: "assets/images/nfs.jpeg",
      title: "Need for Speed",
      price: 800,
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      image: "assets/images/lof.jpeg",
      title: "Last of Us",
      price: 1000,
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      image: "assets/images/fc.jpeg",
      title: "Far Cry 3",
      price: 500,
      color: Color(0xFF3D82AE)),
];
