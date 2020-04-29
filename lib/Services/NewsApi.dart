
import 'package:news_app/Services/APIRequest.dart';
import 'package:news_app/Services/Response.dart';

class NewsApi {
  final String country = "IN";
  APIResponse response;

  Future<void> getTrendingNews() async {
    APIRequest request = APIRequest(endpoint: "top-headlines", queryParams: "country=$country");
    this.response = await request.newsRequest("articles");
  }

  Future<void> getSources() async {
    APIRequest request = APIRequest(endpoint: "sources", queryParams: "country=$country");
    this.response = await request.newsRequest("sources");
  }

  Future<void> getNewsBySource(String id) async {
    APIRequest request = APIRequest(endpoint: "everything", queryParams: "sources=$id");
    this.response = await request.newsRequest("articles");
  }

}