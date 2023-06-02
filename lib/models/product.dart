import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  String? id;
  String? productName;
  String? price;
  String? imageUrl;
  DateTime? createdAt;
  DateTime? updatedAt;


  Product({this.imageUrl,this.productName,this.price, this.createdAt, this.updatedAt,});

  Product.fromFirestore(dynamic product)
      :
        id= product.id,
        productName = product.data()['productName'],
        price = product.data()['price'],
        imageUrl = product.data()['imageUrl'];



  Map<String, dynamic> toMap() {
    return {
      'price':price,
      'productName':productName,
      'imageUrl':imageUrl,
      'createdAt': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp()
    };
  }
}
