import 'package:dartz/dartz.dart';
import 'package:softcode_test/models/product.dart';
import '../../utils/api_request_failure.dart';

abstract class ProductRepository{
  Future<Either<ApiRequestFailure, List<Product>>>getAllProduct();
}