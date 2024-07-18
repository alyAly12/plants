import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import 'home_country_nav_item.dart';
import 'home_country_nav_list.dart';

class HomeCountryNavListView extends StatefulWidget {
  const HomeCountryNavListView({super.key});

  @override
  State<HomeCountryNavListView> createState() =>
      _HomeCountryNavListViewState();
}

class _HomeCountryNavListViewState extends State<HomeCountryNavListView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black,width: 1)
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: HomeCountryNavList.homeCountryNavList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: HomeCountryNavItem(
                title: HomeCountryNavList.homeCountryNavList[index].cityTitle,

                color: HomeCountryNavList.homeCountryNavList[index].isSelected
                    ? AppColors.blueColor
                    : Colors.white,
                onTap: ()async {
                  setState(() {
                    HomeCountryNavList.homeCountryNavList[index].isSelected =
                    !HomeCountryNavList.homeCountryNavList[index].isSelected;
                    HomeCountryNavList.homeCountryNavList[index].zoneId=
                        HomeCountryNavList.homeCountryNavList[index].zoneId;
                  });

                },
              ),
            );
          }),
    );
  }
}
