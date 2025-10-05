import 'package:injectable/injectable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:trnews/core/constants/endpoints.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../../core/services/network/network_service.dart';
import '../../domain/models/corporate_model.dart';
import '../../domain/repositories/corporate_repository.dart';

@LazySingleton(as: CorporateRepository)
class CorporateRepositoryImpl implements CorporateRepository {
  final NetworkService networkService;

  CorporateRepositoryImpl(this.networkService);

  List<CorporateModel>? _cache; // cache alanı

  @override
  Future<Either<Failure, List<CorporateModel>>> getCorporateContents() async {
    // Eğer cache varsa direkt onu döndür
    if (_cache != null) {
      return Right(_cache!);
    }

    final result = await networkService.get(Endpoints.corporate);

    return result.fold(
      (failure) => Left(failure),
      (response) {
        try {
          final dataList = response.data?['data'] as List<dynamic>? ?? [];
          final contents = dataList
              .map((e) => CorporateModel.fromJson(e as Map<String, dynamic>))
              .toList();

          _cache = contents; // cache'e kaydet
          return Right(contents);
        } catch (e) {
          return const Left(
              Failure.parsingError('Kurumsal veri çözümlenemedi'));
        }
      },
    );
  }

  /// Cache'i manuel temizlemek için (isteğe bağlı)
  void clearCache() {
    _cache = null;
  }
}
