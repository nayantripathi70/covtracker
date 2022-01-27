import 'package:covtracker/src/covdata.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<CovData>> fetchData() async {
  //Fetching data from API
  String url = 'https://api.rootnet.in/covid19-in/stats/latest';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    //Decode JSON data in object;
    var jsondata = jsonDecode(response.body);
    //Get country data object from JSON object;
    var obj1 = jsondata['data']['summary'];
    List<CovData> result = [CovData.fromJsonCountry(obj1, "India")];
    //Get all state data from JSON object;
    var obj2 = jsondata['data']['regional'];
    for (var obj in obj2) {
      //Set all state data in result List;
      result.add(CovData.fromJson(obj));
    }

    return result;
    //return state data;
  } else {
    //If data was not fond;
    throw Exception('Failed to load album');
  }
}
