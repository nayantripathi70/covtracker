class CovData {
  int? confval;
  int? recval;
  int? deaths;
  String? statename;

  CovData({this.statename, this.confval, this.recval, this.deaths});

  factory CovData.fromJson(Map<String, dynamic> obj) {
    return CovData(
      statename: obj['loc'] as String,
      confval: obj['totalConfirmed'] as int,
      recval: obj['discharged'] as int,
      deaths: obj['deaths'] as int,
    );
  }
  factory CovData.fromJsonCountry(Map<String, dynamic> obj, String name) {
    return CovData(
      statename: name,
      confval: obj['total'] as int,
      recval: obj['discharged'] as int,
      deaths: obj['deaths'] as int,
    );
  }
}
