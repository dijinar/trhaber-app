part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.changeTheme({
    required bool isDarkMode,
  }) = _ChangeTheme;

  const factory AppEvent.changeLanguage({
    required String languageCode,
  }) = _ChangeLanguage;

  const factory AppEvent.toggleNotifications({
    required bool enabled,
  }) = _ToggleNotifications;
}
