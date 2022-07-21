import 'dart:convert';
import '../model/Meal.dart';
import 'package:http/http.dart' as http;

class Api_Services {
  static String baseUrl =
      "https://api.spoonacular.com/recipes/complexSearch?query=";
  static String ApiKey = "c020b400a8244106a0b807006800605b";
  static String parameter =
      "&maxFat=100&maxProtein=100&maxCarbs=200&number=10&apiKey=";

//https://api.spoonacular.com/recipes/complexSearch?query=Pasta%20With%20Tuna&maxFat=100&maxProtein=100&maxCarbs=200&number=10&apiKey=c020b400a8244106a0b807006800605b

  //this function will provide all suggestions
  static Future<List<Meal>> getMealSuggestion({String? query}) async {
    http.Response response =
        await http.get(Uri.parse('$baseUrl$query$parameter$ApiKey'));
    print(response.body); //Showing all json data
    if (response.statusCode == 200) {
      final List Meals =
          json.decode(response.body); //  Meals will have data in Map
      return Meals.map((json) => Meal.fromjson(json))
          .toList(); //converting each Map in Meal object and returning list of Meal

    } else {
      throw Exception();
    }
  }
}
