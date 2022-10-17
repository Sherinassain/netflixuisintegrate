import 'package:netflixuis/infrastracture/api_key.dart';
import 'package:netflixuis/widgets/string.dart';

class apiendpoints {
  static const downloads = '$baseurl/trending/all/week?api_key=$apikey';
  static const search = '$baseurl/search/movie?api_key=$apikey';
  static const hotandnewmovie = '$baseurl/discover/movie?api_key=$apikey';
    static const hotandnewtv = '$baseurl/discover/tv?api_key=$apikey';
}
