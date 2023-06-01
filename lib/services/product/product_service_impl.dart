
import 'package:softcode_test/models/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'product_service.dart';

class ProductServiceImpl implements ProductService{
  @override
  Future<List<Product>> getAllProduct() async{
    QuerySnapshot products = await FirebaseFirestore.instance.collection('Products').get();
    return products.docs.map((product) => Product.fromFirestore(product)).toList();
  }


}