


import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String TMDB_KEY = dotenv.get('TMDB_API_KEY', fallback: "NO API KEY ");
}