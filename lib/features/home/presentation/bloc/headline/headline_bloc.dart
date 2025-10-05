import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/models/headline/headline_model.dart';
import '../../../domain/repositories/home_repository.dart';

part 'headline_bloc.freezed.dart';

// Events
@freezed
class HeadlineEvent with _$HeadlineEvent {
  const factory HeadlineEvent.fetch() = FetchHeadlineEvent;
}

// States
@freezed
class HeadlineState with _$HeadlineState {
  const factory HeadlineState.initial() = HeadlineInitial;
  const factory HeadlineState.loading() = HeadlineLoading;
  const factory HeadlineState.loaded(List<HeadlineModel> headlines) =
      HeadlineLoaded;
  const factory HeadlineState.error(String message) = HeadlineError;
}

// Bloc
class HeadlineBloc extends Bloc<HeadlineEvent, HeadlineState> {
  final HomeRepository repository;

  HeadlineBloc(this.repository) : super(const HeadlineState.initial()) {
    on<FetchHeadlineEvent>((event, emit) async {
      emit(const HeadlineState.loading());
      final result = await repository.getHeadlines();

      result.match(
        (failure) => emit(HeadlineState.error(failure.message)),
        (headlines) => emit(HeadlineState.loaded(headlines)),
      );
    });
  }
}
