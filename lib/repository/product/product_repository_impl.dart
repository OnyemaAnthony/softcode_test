import 'package:dartz/dartz.dart';
import 'package:softcode_test/models/product.dart';
import 'package:softcode_test/repository/product/product_repository.dart';
import 'package:softcode_test/services/product/product_service.dart';

import '../../utils/api_interceptor.dart';
import '../../utils/api_request_failure.dart';

class ProductRepositoryImpl implements ProductRepository{
  final  ProductService _productService;

  ProductRepositoryImpl(this._productService);

  @override
  Future<Either<ApiRequestFailure, List<Product>>> getAllProduct() {
    return  apiInterceptor(() => _productService.getAllProduct());
  }
}