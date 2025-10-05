import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/models/category_news/category_news_model.dart';
import '../../../domain/repositories/home_repository.dart';

part 'vertical_headline_bloc.freezed.dart';

// Events
@freezed
class VerticalHeadlineEvent with _$VerticalHeadlineEvent {
  const factory VerticalHeadlineEvent.fetch() = FetchVerticalHeadlineEvent;
}

// States
@freezed
class VerticalHeadlineState with _$VerticalHeadlineState {
  const factory VerticalHeadlineState.initial() = VerticalHeadlineInitial;
  const factory VerticalHeadlineState.loading() = VerticalHeadlineLoading;
  const factory VerticalHeadlineState.loaded(
      List<CategoryNewsModel> headlines) = VerticalHeadlineLoaded;
  const factory VerticalHeadlineState.error(String message) =
      VerticalHeadlineError;
}

// Bloc
class VerticalHeadlineBloc
    extends Bloc<VerticalHeadlineEvent, VerticalHeadlineState> {
  final HomeRepository repository;

  VerticalHeadlineBloc(this.repository)
      : super(const VerticalHeadlineState.initial()) {
    on<FetchVerticalHeadlineEvent>((event, emit) async {
      emit(const VerticalHeadlineState.loading());
      final result = await repository.getVerticalHeadlines();

      result.match(
        (failure) => emit(VerticalHeadlineState.error(failure.message)),
        (headlines) => emit(VerticalHeadlineState.loaded(headlines)),
      );
    });
  }
}
