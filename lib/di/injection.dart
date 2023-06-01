import 'package:get_it/get_it.dart';
import 'package:softcode_test/blocs/product/product_bloc.dart';
import 'package:softcode_test/repository/product/product_repository.dart';
import 'package:softcode_test/repository/product/product_repository_impl.dart';
import 'package:softcode_test/services/product/product_service.dart';
import 'package:softcode_test/services/product/product_service_impl.dart';
import 'package:softcode_test/usecase/product/get_all_product_case.dart';

final getIt = GetIt.instance;
class Di{
  static Future<void> initialize()async{
    getIt.registerFactory(() => ProductBloc());
    getIt.registerLazySingleton<ProductService>(() => ProductServiceImpl());
    getIt.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl(getIt()));

    getIt.registerLazySingleton(() => GetAllProductCase(getIt()));
  }
}
