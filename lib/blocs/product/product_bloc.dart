import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../models/product.dart';
import '../../usecase/product/get_all_product_case.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<GetAllProductEvent>(_mapGetAllProductEventToState);
  }

  FutureOr<void> _mapGetAllProductEventToState(GetAllProductEvent event, Emitter<ProductState> emit) async{
    emit(ProductLoadingState());
    final response = await GetAllProductCase.it.call();
    response.fold((l) {
      emit(ProductErrorState(l.message));

    }, (r) {
      emit(ProductLoadedState(r));
    });
  }
}
