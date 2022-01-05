import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String urlForImage;
  final String productName;
  final String productPrice;
  final String productId;
  const ProductDetailPage(
      {Key? key,
      required this.urlForImage,
      required this.productName,
      required this.productPrice,
      required this.productId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image(
                image: NetworkImage(urlForImage),
                fit: BoxFit.cover,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back))
          ],
        ),
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(productName),
            const Text("açıklaması"),
            Text(productPrice),
            Container(
              height: 25,
              color: Colors.red.shade400,
              child: const Center(
                child: Text("Sepete ekle"),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
