import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled9/models/product.dart';

class RemoteServices{
  static var client=http.Client();
  static Future<List<Product>?> fetchProducts()async{
    var response=await client.get(Uri.parse("https://dummyjson.com/products"));
    if(response.statusCode==200){
    var jsonresult=response.body;
    return productFromJson(jsonresult);
    }else{
      Get.snackbar('error',response.statusCode.toString());
      return null;
    }
  }
}