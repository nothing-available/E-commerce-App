import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token; //to talk to the server u should have token
  final String appBaseUrl;
  late Map<String, String> _mainHeaders;

  //constructor
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);

    _mainHeaders={
      'Content-type':'application/json; charset=UTF-8',
      'Authorization' : 'Bearer $token',
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
