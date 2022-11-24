import 'package:counter_7/model/watch_list.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<WatchList>> fetchWatchlist() async {
  var url = Uri.parse('https://tugas2teukugevin.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object MyWatchlist
  List<WatchList> watchList = [];
  for (var d in data) {
    if (d != null) {
      watchList.add(WatchList.fromJson(d));
    }
  }

  return watchList;
}

