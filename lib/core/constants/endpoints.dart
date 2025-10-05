// ignore_for_file: avoid_classes_with_only_static_members

abstract final class Endpoints {
  static const baseUrl = "https://api.trhaber.com/";

  static const createToken = "${baseUrl}create-token";

  static const headline = "${baseUrl}list/headline";
  static const categories = "${baseUrl}list/category";

  static String categoryDetail(String categoryID) =>
      "${baseUrl}list/category/$categoryID";

  static String newsDetail(String newsID) => "${baseUrl}content/post/$newsID";

  static const authors = "${baseUrl}list/writers";

  static String articles(String authorID) =>
      "${baseUrl}list/articles/$authorID";

  static const corporate = "${baseUrl}content/corporate";

  static const currencies = "${baseUrl}module/currencies";

  static const whatHappened = "${baseUrl}list/special/what-happened";

  static const search = "${baseUrl}list/search";

  static const breakingNews = "${baseUrl}list/special/breaking-news";

  static const topHeadlines = "${baseUrl}list/special/top-headline";

  static const verticalHeadlines = "${baseUrl}list/special/vertical-headline";

  static const multimedia = "${baseUrl}list/special/multimedia";

  static const tags = "${baseUrl}list/tags";

  static String tagDetail(String tagID) => "${baseUrl}list/tags/$tagID";

  static const feedback = "${baseUrl}content/feedback";

  static const menu = "${baseUrl}module/navigation";

  static const weather = "${baseUrl}module/weather";

  static const infographic = "${baseUrl}list/special/infographic";

  static const fixture = "${baseUrl}module/fixture";
}
