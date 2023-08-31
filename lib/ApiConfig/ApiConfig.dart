import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/Movie.dart';

class ApiConfig
{
     static Future getMovieDB(String movieTitle) async
     {
         var url = "https://www.omdbapi.com/?t="+movieTitle+"&apikey=fc6216c6";
         var response = await http.get(Uri.parse(url));
         var data = jsonDecode(response.body);

         Movie m = Movie.fromJson(data);

         return m;
     }
}


