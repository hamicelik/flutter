import 'package:flutter/material.dart';
import 'package:market_app1/app_page/product_page.dart';

class ProductCategoriesTabbar extends StatefulWidget {
  const ProductCategoriesTabbar({Key? key}) : super(key: key);

  @override
  _ProductCategoriesTabbarState createState() =>
      _ProductCategoriesTabbarState();
}

class _ProductCategoriesTabbarState extends State<ProductCategoriesTabbar>
    with TickerProviderStateMixin {
  TabController? tvcontrol;
  @override
  void initState() {
    super.initState();
    tvcontrol = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(controller: tvcontrol, tabs: const [
          Text("Staple food"),
          Text("Candy"),
          Text("Beverages"),
          Text("Cleaning equipment")
        ]),
        Expanded(
          child: TabBarView(controller: tvcontrol, children: const [
            ProductsPage(
              tabbarCategories: "Staple food",
            ),
            ProductsPage(
              tabbarCategories: "Candy",
            ),
            ProductsPage(
              tabbarCategories: "Beverages",
            ),
            ProductsPage(
              tabbarCategories: "Cleaning equipment",
            )
          ]),
        )
      ],
    );
  }
}
