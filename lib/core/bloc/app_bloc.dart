import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppEvent>((event, emit) async {
      await event.map(
        changeTheme: (e) => _onChangeTheme(e, emit),
        changeLanguage: (e) => _onChangeLanguage(e, emit),
        toggleNotifications: (e) => _onToggleNotifications(e, emit),
      );
    });
  }

  Future<void> _onChangeTheme(
      _ChangeTheme event, Emitter<AppState> emit) async {
    emit(state.copyWith(isDarkMode: event.isDarkMode));
  }

  Future<void> _onChangeLanguage(
      _ChangeLanguage event, Emitter<AppState> emit) async {
    emit(state.copyWith(languageCode: event.languageCode));
  }

  Future<void> _onToggleNotifications(
      _ToggleNotifications event, Emitter<AppState> emit) async {
    emit(state.copyWith(notificationsEnabled: event.enabled));
  }
}
