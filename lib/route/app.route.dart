import 'package:birghtfutureadmissions/main.dart';
import 'package:birghtfutureadmissions/route/app.pages.dart';
import 'package:birghtfutureadmissions/view/home/screens/home.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../binding/home.binding.dart';

class AppRoute {

  static final List<GetPage<dynamic>> list = [
    GetPage(
        name: AppPages.HOME,
         binding: HomeBinding(),
         page:  ()=>Home(),
    )
  ];

}