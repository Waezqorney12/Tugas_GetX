import 'package:get/get.dart';
import 'package:minggu_9/model/product.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Purchase extends GetxController{
  var products = <Product>[].obs;
  @override
  void onInit(){
    fetchProduct();
    super.onInit();
  }

  void fetchProduct()async{
    await Future.delayed(Duration(seconds: 1));

    var serverResponse = [
      Product(1, "Demo Product", "aby", 
      "This is a Product that we are going to show by getX", 300.0),
      Product(1, "Demo Product", "aby", 
      "This is a Product that we are going to show by getX", 300.0),
      Product(1, "Demo Product", "aby", 
      "This is a Product that we are going to show by getX", 300.0),
      Product(1, "Demo Product", "aby", 
      "This is a Product that we are going to show by getX", 300.0),
      Product(1, "Demo Product", "aby", 
      "This is a Product that we are going to show by getX", 300.0),
      Product(1, "Demo Product", "aby", 
      "This is a Product that we are going to show by getX", 300.0),
    ];
    products.value = serverResponse;
  }
}