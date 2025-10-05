import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/category/category_model.dart';
import '../../../domain/repositories/home_repository.dart';

part 'category_bloc.freezed.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.fetch() = _Fetch;
  const factory CategoryEvent.select(String categoryId) = _Select;
}

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.loaded({
    required List<CategoryModel> categories,
    String? selectedCategoryId,
  }) = _Loaded;
  const factory CategoryState.error(String message) = _Error;
}

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final HomeRepository homeRepository;

  CategoryBloc(this.homeRepository) : super(const CategoryState.initial()) {
    on<_Fetch>(_onFetch);
    on<_Select>(_onSelect);
  }

  Future<void> _onFetch(_Fetch event, Emitter<CategoryState> emit) async {
    emit(const CategoryState.loading());

    final result = await homeRepository.getCategories();

    result.fold(
      (failure) => emit(CategoryState.error(failure.message)),
      (categories) {
        final firstId = categories.firstOrNull?.id;
        emit(CategoryState.loaded(
          categories: categories,
          selectedCategoryId: firstId,
        ));
      },
    );
  }

  void _onSelect(_Select event, Emitter<CategoryState> emit) {
    final currentState = state;
    if (currentState is _Loaded) {
      // Check if the selected category ID exists in the list
      final isValidCategory = currentState.categories
          .any((category) => category.id == event.categoryId);

      if (isValidCategory) {
        emit(currentState.copyWith(selectedCategoryId: event.categoryId));
      } else {
        // Emit an error state if the category ID is not valid
        emit(const CategoryState.error("Invalid category selected."));
        // Optionally, revert to the previous loaded state after showing the error,
        // or keep the error state until a new valid action occurs.
        // For simplicity, we keep the error state here.
        // Or, re-emit the current state if error is not desired:
        // emit(currentState);
      }
    }
    // If state is not _Loaded (e.g., _Loading, _Error, _Initial), do nothing.
  }
}
