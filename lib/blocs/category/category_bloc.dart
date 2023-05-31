import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:dartz/dartz.dart';
import '../../models/category/category_response.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    on<GetAllCategoryEvent>(_mapGetAllCategoryEventToState);
  }

  FutureOr<void> _mapGetAllCategoryEventToState(GetAllCategoryEvent event, Emitter<CategoryState> emit) async{
    emit(CategoryLoadingState());
    final response = await Right(null);
    response.fold((l) {
      emit(CategoryErrorState('${l.message}'));

    }, (r) {
    });
  }

}
