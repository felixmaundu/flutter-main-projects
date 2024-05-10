import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project12/models/countrylist.dart';

// myHeaders.append("x-rapidapi-key", "db4a61e7380bd231259557794a6145d5");
//     // db4a61e7380bd231259557794a6145d5
//   //f8b0ffcd0e60d0c36d19d5e70db1ca25
//   //3a904b6a9adb2e87953eda70b7127554
//     myHeaders.append("x-rapidapi-host", "v3.football.api-sports.io");
// final Map<String, String>
final headers = {
  "x-rapidapi-key": "db4a61e7380bd231259557794a6145d5",
  "x-rapidapi-host": "v3.football.api-sports.io",
};
Future<List<CountryListResponse>> fetchCoutries(String api) async {
  CountryList countryList;

  var headers = {
    "x-rapidapi-key": "3a904b6a9adb2e87953eda70b7127554",
    "x-rapidapi-host": "v3.football.api-sports.io",
  };
  var res = await http.get(Uri.parse(api), headers: headers);
  var decodeRes = jsonDecode(res.body);
  countryList = CountryList.fromJson(decodeRes);
  print(countryList.response?.length);
  return countryList.response ?? [];
}
