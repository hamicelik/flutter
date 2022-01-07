import 'package:flutter/material.dart';
import 'package:market_app1/app_page/product_detail_page.dart';
import 'package:market_app1/description_button_page.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key, required this.tabbarCategories})
      : super(key: key);
  final String tabbarCategories;
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
            "1",
            DescriptionButtonPage.sunFlowerOil,
            stock: false),
        productCard(
            "https://productimages.hepsiburada.net/s/37/222-222/10537740075058.jpg/format:webp",
            "1 Kg Un",
            "22TL",
            "2",
            DescriptionButtonPage.flour),
        productCard(
            "https://productimages.hepsiburada.net/s/32/222-222/10377360080946.jpg/format:webp",
            "1 Lt Süt",
            "17TL",
            "3",
            DescriptionButtonPage.milk,
            stock: false),
        productCard(
            "https://productimages.hepsiburada.net/s/61/222-222/110000003121694.jpg/format:webp",
            "500 Gr Makarna",
            "11TL",
            "4",
            DescriptionButtonPage.pasta)
      ];
    } else if (widget.tabbarCategories == "Candy") {
      productCardList = [
        productCard(
            "https://productimages.hepsiburada.net/s/56/222-222/11244055756850.jpg/format:webp",
            "Haribo 80 Gr Altin Ayicik",
            "15.90 TL",
            "5",
            DescriptionButtonPage.gummiCandy,
            stock: false),
        productCard(
            "https://productimages.hepsiburada.net/s/25/550/10094992785458.jpg/format:webp",
            "Kent Tofita Yumi Çilek 120'Li Kutu",
            "60 TL",
            "6",
            DescriptionButtonPage.tofita),
        productCard(
            "https://productimages.hepsiburada.net/s/142/550/110000095143353.jpg/format:webp",
            "Elit Çakıltaşı Çikolata Draje 150 gr",
            "11 TL",
            "7",
            DescriptionButtonPage.stoneChocolate),
        productCard(
            "https://productimages.hepsiburada.net/s/25/550/10135712956466.jpg/format:webp",
            "Bay Balon Tutti Frutti Aromalı Misket Sakız",
            "49 TL",
            "8",
            DescriptionButtonPage.gumballs,
            stock: false)
      ];
    } else if (widget.tabbarCategories == "Beverages") {
      productCardList = [
        productCard(
            "https://productimages.hepsiburada.net/s/58/550/11339376558130.jpg/format:webp",
            "Chia Tohumlu Limon ve Naneli Içecek ",
            "12.50 TL",
            "9",
            DescriptionButtonPage.softDrink,
            stock: false),
        productCard(
            "https://productimages.hepsiburada.net/s/56/550/11249361780786.jpg/format:webp",
            "Red Bull Enerji İçeceği 24x250 ml",
            "290 TL",
            "10",
            DescriptionButtonPage.redbull,
            stock: false),
        productCard(
            "https://productimages.hepsiburada.net/s/123/550/110000073233978.jpg/format:webp",
            "Bor 250 ml Bor Frambuazlı Gazoz",
            "84 TL",
            "11",
            DescriptionButtonPage.raspberrySoda),
        productCard(
            "https://productimages.hepsiburada.net/s/54/550/11190854189106.jpg/format:webp",
            "Black Bruin Enerji Içeceği 330ML x 24'lü",
            "85 TL",
            "12",
            DescriptionButtonPage.blackBruinEnergyDrink)
      ];
    } else if (widget.tabbarCategories == "Cleaning equipment") {
      productCardList = [
        productCard(
            "https://productimages.hepsiburada.net/s/74/550/110000016286383.jpg/format:webp",
            "Fairy Platinum Bulaşık Makinesi Deterjanı Tableti ",
            "230 TL",
            "13",
            DescriptionButtonPage.dishwasherTablets,
            stock: false),
        productCard(
            "https://productimages.hepsiburada.net/s/81/550/110000023123500.jpg/format:webp",
            "Vernel Max Konsantre Sıvı Çamaşır Yumuşatıcısı ",
            "34 TL",
            "14",
            DescriptionButtonPage.fabricSoftenerLiquid),
        productCard(
            "https://productimages.hepsiburada.net/s/38/550/10604112150578.jpg/format:webp",
            "Perwoll Hassas Sıvı Çamaşır Deterjanı Renkli 3 L",
            "54 TL",
            "15",
            DescriptionButtonPage.liquidLaundryDetergent,
            stock: false),
        productCard(
            "https://productimages.hepsiburada.net/s/38/550/10614674849842.jpg/format:webp",
            "Asperox Sarı Güç Ultra Yağ Çözücü 1 Lt Sprey",
            "16 TL",
            "16",
            DescriptionButtonPage.degreaser)
      ];
    }
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: productCardList,
    );
  }

  Widget productCard(String urlForImage, String productName,
      String productPrice, String productId, String description,
      {bool stock = true}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 4, spreadRadius: 2)
            ]),
        child: Column(
          children: [
            productCartGestureDetector(urlForImage, productPrice, productName,
                productId, stock, description),
            const SizedBox(
              height: 8,
            ),
            Text(
              productName,
              textAlign: TextAlign.center,
            ),
            Text(productPrice,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green)),
          ],
        ),
      ),
    );
  }

  GestureDetector productCartGestureDetector(
      String urlForImage,
      String productPrice,
      String productName,
      String productId,
      bool stock,
      String description) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailPage(
                      urlForImage: urlForImage,
                      productPrice: productPrice,
                      productName: productName,
                      productId: productId,
                      stock: stock,
                      description: description,
                    )));
      },
      child: Hero(
        tag: productId,
        child: SizedBox(
          height: 120,
          child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image(
                image: NetworkImage(urlForImage),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
