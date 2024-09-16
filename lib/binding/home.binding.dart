
import 'package:birghtfutureadmissions/view/home/controller/lead.controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LeadController>(()=>LeadController());
  }


}