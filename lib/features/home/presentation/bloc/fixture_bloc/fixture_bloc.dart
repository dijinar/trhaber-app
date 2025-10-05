import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trnews/features/home/domain/models/fixture/fixture_model.dart';
import 'package:trnews/features/home/domain/repositories/home_repository.dart';

part 'fixture_bloc.freezed.dart';

@freezed
class FixtureEvent with _$FixtureEvent {
  const factory FixtureEvent.fetch() = FetchFixtures;
}

@freezed
class FixtureState with _$FixtureState {
  const factory FixtureState.initial() = FixtureInitial;
  const factory FixtureState.loading() = FixtureLoading;
  const factory FixtureState.loaded(List<FixtureModel> fixtures) =
      FixtureLoaded;
  const factory FixtureState.error(String message) = FixtureError;
}

class FixtureBloc extends Bloc<FixtureEvent, FixtureState> {
  final HomeRepository repository;

  FixtureBloc(this.repository) : super(const FixtureInitial()) {
    on<FetchFixtures>(_onFetch);
  }

  Future<void> _onFetch(FetchFixtures event, Emitter<FixtureState> emit) async {
    emit(const FixtureLoading());

    final result = await repository.getFixtures();

    result.fold(
      (failure) => emit(FixtureError(failure.message)),
      (fixtures) => emit(FixtureLoaded(fixtures)),
    );
  }
}
