part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool isDarkMode,
    @Default('tr') String languageCode,
    @Default(true) bool notificationsEnabled,
  }) = _AppState;
}
