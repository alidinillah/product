import 'package:get/get.dart';
import 'package:product/model/product.dart';
import 'package:product/service/product_service.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var product = <Product>[].obs;

  @override
  void onInit() {
    getProduct();
    super.onInit();
  }

  void getProduct() async {
    try {
      isLoading(true);
      var products = await ProductService.getProduct();
      if (products != null) {
        product.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
