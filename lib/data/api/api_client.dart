// This ApiClient class is designed to manage API requests using the GetX package. It initializes the base URL and headers needed for API requests, with the ability to include an authentication token. It extends the capabilities of GetConnect for making HTTP requests while leveraging the benefits of GetX's state management

import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  late Map<String, String> _mainHeader;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    _mainHeader = {
      'Content-type':'application/json; charset=UTF-8',
      'Authorazation':'Bearer $token',

    };
  }
}
