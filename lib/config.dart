import 'package:flutter/material.dart';

class AppConfig{

  static const String DOMAIN = "https://api-bfi.alloneautos.com";
  static const String API = "api/v1";
  static const String BASE_URL = "${DOMAIN}/${API}";


  static const String LEADS = "$BASE_URL/freeseminer/all";

}