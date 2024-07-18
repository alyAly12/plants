import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plants/core/utils/app_route.dart';
import 'package:plants/core/utils/app_strings.dart';
import 'package:plants/features/home_feature/presentation/widgets/product_widgets/product_item_info.dart';


class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.image, required this.nameDesc, required this.yearDesc, required this.statusDesc});
final String image;
final String nameDesc;
final int yearDesc;
final String statusDesc;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      GoRouter.of(context).push(AppRoute.kDetailsView,
      extra: {
        'name':nameDesc,
        'imageUrl':image
      }
      );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black
            ),
          ),
          child: Row(
            children: [
              Container(
                  height: 150,
                  width: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child: Image.network(
                     image,
                  fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  )),
              const SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductItemInfo(title: AppStrings.name, titleDesc: nameDesc,),
                  ProductItemInfo(title: AppStrings.year, titleDesc: '$yearDesc',),
                  ProductItemInfo(title: AppStrings.status, titleDesc: statusDesc,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

