
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {

  final String key = DotEnv().env["API_KEY"];
  final String url = DotEnv().env["API_URL"];

}