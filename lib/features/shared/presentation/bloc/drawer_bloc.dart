import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawer_bloc.freezed.dart';

@freezed
class DrawerEvent with _$DrawerEvent {
  const factory DrawerEvent.navigateToPage(int index) = NavigateToPage;
  const factory DrawerEvent.closeDrawer() = CloseDrawer;
}

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState.initial() = DrawerInitial;
  const factory DrawerState.navigating(int index) = DrawerNavigating;
  const factory DrawerState.closed() = DrawerClosed;
}

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(const DrawerState.initial()) {
    on<NavigateToPage>((event, emit) {
      emit(DrawerState.navigating(event.index));
    });

    on<CloseDrawer>((event, emit) {
      emit(const DrawerState.closed());
    });
  }
}
