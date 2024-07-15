import 'package:flutter/material.dart';
import 'package:plants/features/home_feature/presentation/widgets/navbar_widgets/home_country_nav_listview.dart';
import 'package:plants/features/home_feature/presentation/widgets/product_widgets/product_item_list_view.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeCountryNavListView(),
        SizedBox(height: 15,),
        ProductItemListView(),
      ],
    );
  }
}
