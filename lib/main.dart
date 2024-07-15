import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plants/core/services/service_locator.dart';
import 'package:plants/core/utils/app_route.dart';
import 'package:plants/features/home_feature/presentation/bloc/home_bloc.dart';

import 'features/home_feature/domain/usecase/get_all_plants_usecase.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        title: 'Plants',
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoute.router,
      ),
    );
  }
}

