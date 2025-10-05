import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/author_model/author_model.dart';
import '../../../domain/models/article_model/article_model.dart';
import '../../../domain/repositories/author_repository.dart';

part 'author_profile_bloc.freezed.dart';

@freezed
class AuthorProfileEvent with _$AuthorProfileEvent {
  const factory AuthorProfileEvent.fetchArticles() = FetchAuthorArticles;
}

@freezed
class AuthorProfileState with _$AuthorProfileState {
  const factory AuthorProfileState.initial() = AuthorProfileInitial;
  const factory AuthorProfileState.loading() = AuthorProfileLoading;
  const factory AuthorProfileState.loaded({
    required AuthorModel author,
    required List<ArticleModel> articles,
  }) = AuthorProfileLoaded;
  const factory AuthorProfileState.error(String message) = AuthorProfileError;
}

class AuthorProfileBloc extends Bloc<AuthorProfileEvent, AuthorProfileState> {
  final AuthorModel author;
  final AuthorRepository repository;

  AuthorProfileBloc({
    required this.author,
    required this.repository,
  }) : super(const AuthorProfileInitial()) {
    on<FetchAuthorArticles>(_onFetchAuthorArticles);
  }

  Future<void> _onFetchAuthorArticles(
    FetchAuthorArticles event,
    Emitter<AuthorProfileState> emit,
  ) async {
    emit(const AuthorProfileLoading());

    final result = await repository.getArticlesByAuthorId(author.id.toString());

    result.match(
      (failure) => emit(AuthorProfileError(failure.message)),
      (articles) =>
          emit(AuthorProfileLoaded(author: author, articles: articles)),
    );
  }
}
