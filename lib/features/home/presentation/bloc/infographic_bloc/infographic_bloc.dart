import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/category_news/category_news_model.dart';
import '../../../domain/repositories/home_repository.dart';

part 'infographic_bloc.freezed.dart';

@freezed
class InfographicEvent with _$InfographicEvent {
  const factory InfographicEvent.fetch() = FetchInfographic;
}

@freezed
class InfographicState with _$InfographicState {
  const factory InfographicState.initial() = InfographicInitial;
  const factory InfographicState.loading() = InfographicLoading;
  const factory InfographicState.loaded(List<CategoryNewsModel> news) =
      InfographicLoaded;
  const factory InfographicState.error(String message) = InfographicError;
}

class InfographicBloc extends Bloc<InfographicEvent, InfographicState> {
  final HomeRepository repository;

  InfographicBloc(this.repository) : super(const InfographicInitial()) {
    on<FetchInfographic>(_onFetch);
  }

  Future<void> _onFetch(
      FetchInfographic event, Emitter<InfographicState> emit) async {
    emit(const InfographicLoading());

    final result = await repository.getInfographic();

    result.fold(
      (failure) => emit(InfographicError(failure.message)),
      (news) => emit(InfographicLoaded(news)),
    );
  }
}
