import 'dart:convert';

import 'package:birghtfutureadmissions/config.dart';
import 'package:birghtfutureadmissions/model/lead.model.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:http/http.dart' as http;
class LeadController extends GetxController{

  Rx<LeadModel> leadModel = LeadModel().obs;
  RxBool isLoading = false.obs;



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getLeads();
  }

  Future getLeads()async{
    isLoading.value = true;
    var response = await http.get(Uri.parse("${AppConfig.LEADS}"));
    leadModel.value = LeadModel.fromJson(jsonDecode(response.body));
    isLoading.value = false;
  }


}