import 'package:flutter/material.dart';
import 'package:market_app1/app_page/cart_page.dart';
import 'package:market_app1/app_page/product_categories_tabbar.dart';

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
    _icerik = const [ProductCategoriesTabbar(), CartPage()];
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
          "Market Uygulaması",
          style: TextStyle(
              color: Colors.amber, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.red),
      ),
      drawer: drawerMenu(),
//? Body section

      body: _icerik![currentPageNo],

//? Bottom NavigationBar Section

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

  Drawer drawerMenu() {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.red),
            accountName: Text("Hakan Tunç"),
            accountEmail: Text("hakantnc@gmail.com"),
            currentAccountPicture: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/3777952/pexels-photo-3777952.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            ),
          ),
          drawerListTile("Siparişlarim"),
          drawerListTile("İndirimlerim"),
          drawerListTile("Ayarlar"),
        ],
      ),
    );
  }

  ListTile drawerListTile(String kategori) => ListTile(
        title: Text(kategori),
        onTap: () {},
      );
}
