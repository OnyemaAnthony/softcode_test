
import 'package:softcode_test/models/product.dart';

abstract class ProductService{
  Future<List<Product>>getAllProduct();
}