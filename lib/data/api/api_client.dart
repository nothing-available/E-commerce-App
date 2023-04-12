import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token; //to talk to the server u should have token
  final String appBaseUrl;  //server url
  late Map<String, String> _mainHeaders;

  //constructor
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30); //request time

    _mainHeaders={//url header
      'Content-type':'application/json; charset=UTF-8', //get request
      'Authorization' : 'Bearer $token',  //for post request
    };
  }
  //create a get method
   Future<Response> getData(String uri) async {
        try{
          Response response =await get(uri);
          return response;
        }catch(e){
          print("Error from the api client is "+e.toString());
          return Response(statusCode: 1,statusText: e.toString());
    
        }
      }
    

}
