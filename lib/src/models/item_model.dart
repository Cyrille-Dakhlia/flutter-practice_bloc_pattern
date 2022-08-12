class ItemModel {
  late int _page;
  late int _total_pages;
  late int _total_results;
  late List<_Result> _results = [];

  ItemModel.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['results'].length);
    _page = parsedJson['page'];
    _total_pages = parsedJson['total_pages'];
    _total_results = parsedJson['total_results'];

    _results = (parsedJson['results'] as List<dynamic>)
        .map((e) => _Result(e))
        .toList();
  }

  int get page => _page;
  int get total_pages => _total_pages;
  int get total_results => _total_results;
  List<_Result> get results => _results;
}

class _Result {
  late bool _adult;
  late String _backdrop_path;
  late List<int> _genre_ids = [];
  late int _id;
  late String _original_language;
  late String _original_title;
  late String _overview;
  late double _popularity;
  late String _poster_path;
  late String _release_date;
  late String _title;
  late bool _video;
  late double _vote_average;
  late int _vote_count;

  _Result(result) {
    _adult = result['adult'];
    _backdrop_path = result['backdrop_path'];
    _genre_ids =
        (result['genre_ids'] as List<dynamic>).map((e) => e as int).toList();
    _id = result['id'];
    _original_language = result['original_language'];
    _original_title = result['original_title'];
    _overview = result['overview'];
    _popularity = result['popularity'];
    _poster_path = result['poster_path'];
    _release_date = result['release_date'];
    _title = result['title'];
    _video = result['video'];
    _vote_average = result['vote_average'].toDouble();
    _vote_count = result['vote_count'];
  }

  bool get adult => _adult;
  String get backdrop_path => _backdrop_path;
  List<int> get genre_ids => _genre_ids;
  int get id => _id;
  String get original_language => _original_language;
  String get original_title => _original_title;
  String get overview => _overview;
  double get popularity => _popularity;
  String get poster_path => _poster_path;
  String get release_date => _release_date;
  String get title => _title;
  bool get video => _video;
  double get vote_average => _vote_average;
  int get vote_count => _vote_count;
}
