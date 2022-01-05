import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text("CartPage",
              style: TextStyle(
                color: Colors.red.shade400,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
        productListTile("1", "Chocolate", "2 pieces* 3.5 TL", "7 TL"),
        productListTile("1", "Box milk", "4 pieces* 8 TL", "32 TL"),
        productListTile("1", "Flour", "2 pieces* 20 TL", "40 TL"),
        productListTile("1", "Water", "1 piece* 3.5 TL", "3.5 TL"),

        //? total price section
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              children: [
                Text("TOPLAM",
                    style: TextStyle(
                      color: Colors.red.shade400,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )),
                const Text("82.5 TL",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
        ),

        //? shop complete button
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 56,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.red.shade400,
                borderRadius: BorderRadius.circular(15)),
            child: TextButton(
              onPressed: () {},
              child: Column(
                children: const [
                  Icon(
                    Icons.store,
                    color: Colors.white,
                  ),
                  Text(
                    "Alişverişi tamamla",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  ListTile productListTile(String lineNumber, String productNo,
          String productPrice, String total) =>
      ListTile(
        leading: Text(lineNumber),
        title: Text(productNo),
        subtitle: Text(productPrice),
        trailing: Text(total),
      );
}
