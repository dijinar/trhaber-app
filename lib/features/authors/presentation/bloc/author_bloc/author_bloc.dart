import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/author_model/author_model.dart';
import '../../../domain/repositories/author_repository.dart';

part 'author_bloc.freezed.dart';

@freezed
class AuthorEvent with _$AuthorEvent {
  const factory AuthorEvent.fetch() = FetchAuthors;
}

@freezed
class AuthorState with _$AuthorState {
  const factory AuthorState.initial() = AuthorInitial;
  const factory AuthorState.loading() = AuthorLoading;
  const factory AuthorState.loaded(List<AuthorModel> authors) = AuthorLoaded;
  const factory AuthorState.error(String message) = AuthorError;
}

class AuthorBloc extends Bloc<AuthorEvent, AuthorState> {
  final AuthorRepository repository;

  AuthorBloc(this.repository) : super(const AuthorInitial()) {
    on<FetchAuthors>(_onFetchAuthors);
  }

  Future<void> _onFetchAuthors(
    FetchAuthors event,
    Emitter<AuthorState> emit,
  ) async {
    emit(const AuthorLoading());

    final result = await repository.getAuthors();

    result.match(
      (failure) => emit(AuthorError(failure.message)),
      (authors) => emit(AuthorLoaded(authors)),
    );
  }
}
