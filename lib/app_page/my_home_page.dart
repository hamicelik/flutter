import 'package:flutter/material.dart';
import 'package:market_app1/app_page/cart_page.dart';
import 'package:market_app1/app_page/product_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget>? _icerik;
  int currentPageNo = 0;
  @override
  void initState() {
    _icerik = const [ProductsPage(), CartPage()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Come flying",
          style: TextStyle(
              color: Colors.amber, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.red),
      ),
      body: _icerik![currentPageNo],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Product"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Cart")
        ],
        onTap: (int index) {
          setState(() {
            currentPageNo = index;
          });
        },
        currentIndex: currentPageNo,
      ),
    );
  }
}
