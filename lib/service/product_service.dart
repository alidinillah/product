import 'package:http/http.dart' as http;
import 'package:product/model/product.dart';

class ProductService {
  static var client = http.Client();

  static Future<List<Product>> getProduct() async {
    var response = await client.get(Uri.parse(
        "https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      return [];
    }
  }
}