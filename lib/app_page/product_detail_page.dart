import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String urlForImage;
  final String productName;
  final String productPrice;
  final String productId;
  final bool stock;
  final String description;
  const ProductDetailPage(
      {Key? key,
      required this.urlForImage,
      required this.productName,
      required this.productPrice,
      required this.productId,
      required this.stock,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Stack(
              children: [
                Hero(
                  tag: productId,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.center,
                      heightFactor: 1,
                      child: Image(
                        image: NetworkImage(urlForImage),
                        fit: BoxFit.cover,
                      ),
                    ),
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
                  height: 100,
                ),
                Text(
                  productName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                descriptionButton(context),
                Text(
                  productPrice,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 25,
                    decoration: BoxDecoration(
                        color: stock ? Colors.red.shade400 : Colors.black,
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Text(
                        stock ? "add to cart" : "Out of stock",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }

  TextButton descriptionButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.only(top: 10),
                  height: 200,
                  color: Colors.grey.shade300,
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              });
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: const Text(
            "Açıklama",
          ),
        ));
  }
}
