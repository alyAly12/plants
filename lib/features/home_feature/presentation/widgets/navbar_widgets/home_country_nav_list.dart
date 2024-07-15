import 'package:plants/core/utils/app_strings.dart';

class HomeCountryNavEntity {
  final String cityTitle;
  bool isSelected;
   String?zoneId;

  HomeCountryNavEntity(this.zoneId,{required this.cityTitle, this.isSelected = false});
}

class HomeCountryNavList {
  static List<HomeCountryNavEntity> homeCountryNavList = [
    HomeCountryNavEntity(cityTitle: AppStrings.all,''),
    HomeCountryNavEntity(cityTitle: AppStrings.palestine, 'pal'),
    HomeCountryNavEntity(cityTitle: AppStrings.sudan,'sud' ),
    HomeCountryNavEntity(cityTitle: AppStrings.myanmar,'mya' ),
    HomeCountryNavEntity(cityTitle: AppStrings.transcaucasus,'tcs' ),
    HomeCountryNavEntity(cityTitle: AppStrings.uzbekistan, 'uzb'),

  ];
}
