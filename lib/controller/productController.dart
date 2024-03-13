import 'package:get/get.dart';
import 'package:untitled9/models/product.dart';
import 'package:untitled9/products.dart';
import 'package:untitled9/services/product_details.dart';


class ProductController extends GetxController{
  var productList=<Product>[].obs;
  void fetchProducts()async{
    var product=await RemoteServices.fetchProducts();
    if(product!=null){
      productList.value=product;
    }
  }
  @override
  void onInit() {
    fetchProducts();// TODO: implement onInit
    super.onInit();
  }


}