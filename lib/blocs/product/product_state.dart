part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  @override
  List<Object> get props => [];
  const ProductState();
}

class ProductInitial extends ProductState {

}
class ProductLoadingState extends ProductState{

}
class ProductLoadedState extends ProductState{
  final List<Product> products;

  const ProductLoadedState(this.products);
}

class ProductErrorState extends ProductState{
  final String errorMessage;

  const ProductErrorState(this.errorMessage);
}