import 'package:news_app/models/categories_model.dart';
import 'package:news_app/models/news_chennel_healine_model.dart';
import 'package:news_app/repo/news_repo.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<NewsChannelHeadlinesModel> fetchNewChannelHeadlinesApi(
      String channelName) async {
    final response = await _rep.fetchNewChannelHeadlinesApi(channelName);
    return response;
  }

  Future<CategoriesNewsModel> fetchNewsCategoriesApi(String category) async {
    final response = await _rep.fetchNewsCategoriesApi(category);
    return response;
  }
}
