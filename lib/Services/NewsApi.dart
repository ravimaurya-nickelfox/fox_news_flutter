
import 'package:news_app/Services/APIRequest.dart';
import 'package:news_app/Services/Response.dart';

class NewsApi {

  APIResponse response;

  Future<void> getTrendingNews() async {
    APIRequest request = APIRequest(endpoint: "top-headlines", queryParams: "");
    this.response = await request.newsRequest();
  }

}