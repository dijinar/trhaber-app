import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/models/corporate_model.dart';
import '../../domain/repositories/corporate_repository.dart';

part 'corporate_bloc.freezed.dart';

@freezed
class CorporateEvent with _$CorporateEvent {
  const factory CorporateEvent.fetch() = _FetchCorporateContent;
}

@freezed
class CorporateState with _$CorporateState {
  const factory CorporateState.initial() = _Initial;
  const factory CorporateState.loading() = _Loading;
  const factory CorporateState.success(List<CorporateModel> data) = _Success;
  const factory CorporateState.failure(String message) = _Failure;
}

@injectable
class CorporateBloc extends Bloc<CorporateEvent, CorporateState> {
  final CorporateRepository repository;

  CorporateBloc(this.repository) : super(const CorporateState.initial()) {
    on<CorporateEvent>((event, emit) async {
      await event.map(
        fetch: (_) async {
          emit(const CorporateState.loading());

          final result = await repository.getCorporateContents();

          result.fold(
            (failure) => emit(CorporateState.failure(
                failure.message ?? "Beklenmeyen bir hata oluştu")),
            (data) {
              final sortedData = _moveContactToEnd(data);
              emit(CorporateState.success(sortedData));
            },
          );
        },
      );
    });
  }

  /// "İletişim" başlıklı içeriği sona atar
  List<CorporateModel> _moveContactToEnd(List<CorporateModel> list) {
    final contact = list.where((e) => e.title == 'İletişim').toList();
    final others = list.where((e) => e.title != 'İletişim').toList();
    return [...others, ...contact];
  }
}
