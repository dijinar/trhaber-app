import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../home/domain/models/category_news/category_news_model.dart';
import '../../../../home/domain/repositories/home_repository.dart';

part 'what_happened_bloc.freezed.dart';

// EVENTS
@freezed
class WhatHappenedEvent with _$WhatHappenedEvent {
  const factory WhatHappenedEvent.fetch() = FetchWhatHappenedEvent;
}

// STATES
@freezed
class WhatHappenedState with _$WhatHappenedState {
  const factory WhatHappenedState.initial() = WhatHappenedInitial;
  const factory WhatHappenedState.loading() = WhatHappenedLoading;
  const factory WhatHappenedState.loaded(List<CategoryNewsModel> news) =
      WhatHappenedLoaded;
  const factory WhatHappenedState.error(String message) = WhatHappenedError;
}

// BLOC
class WhatHappenedBloc extends Bloc<WhatHappenedEvent, WhatHappenedState> {
  final HomeRepository repository;

  WhatHappenedBloc(this.repository) : super(const WhatHappenedState.initial()) {
    on<FetchWhatHappenedEvent>((event, emit) async {
      emit(const WhatHappenedState.loading());

      final result = await repository.getWhatHappened();

      result.match(
        (failure) => emit(WhatHappenedState.error(failure.message)),
        (news) => emit(WhatHappenedState.loaded(news)),
      );
    });
  }
}
