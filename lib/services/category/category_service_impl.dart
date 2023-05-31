
import '../../utils/base_api.dart';
import 'category_service.dart';

class CategoryServiceImpl extends BaseApi implements CategoryService{
  @override
  Future getAllCategories() {
    // TODO: implement getAllCategories
    throw UnimplementedError();
  }
  // @override
  // Future<CategoryResponse> getAllCategories() async{
  //   String url='https://firestore.googleapis.com/v1/projects/applaudo-todo-app/databases/(default)/documents/categories?key=';
  //   final response = await get(url);
  //   return CategoryResponse.fromJson(response);
  // }
  
}