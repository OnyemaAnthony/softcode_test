import 'package:dartz/dartz.dart';

import '../../utils/api_request_failure.dart';
import '../use_case.dart';

// class GetAllCategoryCase with NoParamUseCases<Either<ApiRequestFailure,CategoryResponse>>{
//   final CategoryRepository _categoryRepository;
//
//   GetAllCategoryCase(this._categoryRepository);
//   @override
//   Future<Either<ApiRequestFailure, CategoryResponse>> call() {
//     return _categoryRepository.getAllCategory();
//   }
//   static GetAllCategoryCase get it =>getIt<GetAllCategoryCase>();
// }