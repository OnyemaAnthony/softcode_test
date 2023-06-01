import 'package:dartz/dartz.dart';
import 'package:softcode_test/models/product.dart';
import 'package:softcode_test/repository/product/product_repository.dart';
import '../../di/injection.dart';
import '../../utils/api_request_failure.dart';
import '../use_case.dart';

class GetAllProductCase with NoParamUseCases<Either<ApiRequestFailure,List<Product>>>{
  final ProductRepository _productRepository;

  GetAllProductCase(this._productRepository);

  @override
  Future<Either<ApiRequestFailure, List<Product>>> call() {
    return  _productRepository.getAllProduct();
  }
  static GetAllProductCase get it =>getIt<GetAllProductCase>();
}