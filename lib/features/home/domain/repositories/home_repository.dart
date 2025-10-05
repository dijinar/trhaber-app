import 'package:fpdart/fpdart.dart';
import 'package:trnews/features/home/domain/models/tag/tag_model.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../../core/models/news/news_model.dart';
import '../models/category/category_model.dart';
import '../models/category_news/category_news_model.dart'
    show CategoryNewsModel;
import '../models/headline/headline_model.dart';
import '../models/fixture/fixture_model.dart';

abstract class HomeRepository {
  Future<List<NewsModel>> getNews();
  Future<Either<Failure, List<HeadlineModel>>> getHeadlines(); //
  Future<Either<Failure, List<CategoryModel>>> getCategories();

  Future<Either<Failure, List<CategoryNewsModel>>> getCategoryNews(
    String categoryId, {
    int page = 1,
  });
  Future<Either<Failure, (CategoryModel, List<CategoryNewsModel>)>>
      getCategoryNewsWithInfo(String categoryId); //
  Future<Either<Failure, List<CategoryNewsModel>>> getWhatHappened();
  Future<Either<Failure, List<CategoryNewsModel>>> getVerticalHeadlines();
  Future<Either<Failure, List<CategoryNewsModel>>> getBreakingNews();
  Future<Either<Failure, List<CategoryNewsModel>>> getTopHeadlines();
  Future<Either<Failure, List<CategoryNewsModel>>> getInfographic(); //
  Future<Either<Failure, List<TagModel>>> getTags();
  Future<Either<Failure, List<CategoryNewsModel>>> getTagDetails(
      String tagId); //
  Future<Either<Failure, List<FixtureModel>>> getFixtures();
}
