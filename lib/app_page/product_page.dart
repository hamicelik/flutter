import 'package:flutter/material.dart';
import 'package:market_app1/app_page/product_detail_page.dart';

class ProductsPage extends StatefulWidget {
  final String? tabbarCategories;
  const ProductsPage({Key? key, this.tabbarCategories}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

late List<Widget> productCardList;

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    if (widget.tabbarCategories == "Staple food") {
      productCardList = [
        productCard(
            "https://productimages.hepsiburada.net/s/10/550/9223325810738.jpg/format:webp",
            "Ay Çiçek Yağı",
            "163 TL",
            "1"),
        productCard(
            "https://productimages.hepsiburada.net/s/37/222-222/10537740075058.jpg/format:webp",
            "1 Kg Un",
            "22TL",
            "2"),
        productCard(
            "https://productimages.hepsiburada.net/s/32/222-222/10377360080946.jpg/format:webp",
            "1 Lt Süt",
            "17TL",
            "3"),
        productCard(
            "https://productimages.hepsiburada.net/s/61/222-222/110000003121694.jpg/format:webp",
            "500 Gr Makarna",
            "11TL",
            "4")
      ];
    } else if (widget.tabbarCategories == "Candy") {
      productCardList = [
        productCard(
            "https://productimages.hepsiburada.net/s/56/222-222/11244055756850.jpg/format:webp",
            "Haribo 80 Gr Altin Ayicik",
            "15.90 TL",
            "5"),
        productCard(
            "https://productimages.hepsiburada.net/s/25/550/10094992785458.jpg/format:webp",
            "Kent Tofita Yumi Çilek 120'Li Kutu",
            "60 TL",
            "6"),
        productCard(
            "https://productimages.hepsiburada.net/s/142/550/110000095143353.jpg/format:webp",
            "Elit Çakıltaşı Çikolata Draje 150 gr",
            "11 TL",
            "7"),
        productCard(
            "https://productimages.hepsiburada.net/s/25/550/10135712956466.jpg/format:webp",
            "Bay Balon Tutti Frutti Aromalı Misket Sakız / Otomat Sakızı 1 kg (222 Adet)",
            "49 TL",
            "8")
      ];
    } else if (widget.tabbarCategories == "Beverages") {
      productCardList = [
        productCard(
            "https://productimages.hepsiburada.net/s/58/550/11339376558130.jpg/format:webp",
            "Drip Drops Chia Tohumlu Limon ve Naneli Içecek 250 ml",
            "12.50 TL",
            "9"),
        productCard(
            "https://productimages.hepsiburada.net/s/56/550/11249361780786.jpg/format:webp",
            "Red Bull Enerji İçeceği 24x250 ml",
            "290 TL",
            "10"),
        productCard(
            "https://productimages.hepsiburada.net/s/123/550/110000073233978.jpg/format:webp",
            "Bor 250 ml Bor Frambuazlı Gazoz",
            "84 TL",
            "11"),
        productCard(
            "https://productimages.hepsiburada.net/s/54/550/11190854189106.jpg/format:webp",
            "Black Bruin Enerji Içeceği 330ML x 24'lü",
            "85 TL",
            "12")
      ];
    } else if (widget.tabbarCategories == "Cleaning equipment") {
      productCardList = [
        productCard(
            "https://productimages.hepsiburada.net/s/74/550/110000016286383.jpg/format:webp",
            "Fairy Platinum Bulaşık Makinesi Deterjanı Tableti ",
            "230 TL",
            "13"),
        productCard(
            "https://productimages.hepsiburada.net/s/81/550/110000023123500.jpg/format:webp",
            "Vernel Max Konsantre Sıvı Çamaşır Yumuşatıcısı ",
            "34 TL",
            "14"),
        productCard(
            "https://productimages.hepsiburada.net/s/38/550/10604112150578.jpg/format:webp",
            "Perwoll Hassas Sıvı Çamaşır Deterjanı Renkli 3 L",
            "54 TL",
            "15"),
        productCard(
            "https://productimages.hepsiburada.net/s/38/550/10614674849842.jpg/format:webp",
            "Asperox Sarı Güç Ultra Yağ Çözücü 1 Lt Sprey",
            "16 TL",
            "16")
      ];
    }
    // ignore: avoid_print
    print("init state çalıştı");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 5,
      crossAxisSpacing: 10,
      children: productCardList,
    );
  }

  Widget productCard(String urlForImage, String productName,
      String productPrice, String productId) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 1)
            ]),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                              urlForImage: urlForImage,
                              productPrice: productPrice,
                              productName: productName,
                              productId: productId,
                            )));
              },
              child: SizedBox(
                  height: 100,
                  child: Image(
                    image: NetworkImage(urlForImage),
                    fit: BoxFit.cover,
                  )),
            ),
            Text(productName),
            Text(productPrice),
          ],
        ),
      ),
    );
  }
}
