import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/menu_navigation/menu_navigation_model.dart';
import '../../domain/repositories/menu_repository.dart';

part 'menu_bloc.freezed.dart';

@freezed
class MenuEvent with _$MenuEvent {
  const factory MenuEvent.fetch() = _Fetch;
}

@freezed
class MenuState with _$MenuState {
  const factory MenuState.initial() = _Initial;
  const factory MenuState.loading() = _Loading;
  const factory MenuState.loaded(List<MenuNavigationModel> items) = _Loaded;
  const factory MenuState.error(String message) = _Error;
}

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final MenuRepository menuRepository;

  MenuBloc(this.menuRepository) : super(const MenuState.initial()) {
    on<_Fetch>(_onFetch);
  }

  Future<void> _onFetch(_Fetch event, Emitter<MenuState> emit) async {
    emit(const MenuState.loading());

    final result = await menuRepository.getMenu();

    result.fold(
      (failure) => emit(MenuState.error(failure.message)),
      (menuItems) => emit(MenuState.loaded(menuItems)),
    );
  }
}
