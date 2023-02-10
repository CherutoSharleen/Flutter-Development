import 'package:flutter/material.dart';
import 'package:news_feed/home_page.dart';
import 'package:http/http.dart' as http; // For network calls
import 'dart:convert'; // Amongst other functions, for decoding and encoding JSON
import 'env_vars.dart';

//Pass instance of MyApp to the runApp
void main() => runApp(const MyApp());

//My App is stateless so its immutable and doesn't change depending on
//external triggers
class MyApp extends StatelessWidget {
  const MyApp({super.key});

//returns Mateial App widget that uses the material design of flutter
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News Aggregator",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
              .copyWith(secondary: Colors.blueAccent)),

      //My Home Page is in another folder and it requires a constant title
      home: const MyHomePage(title: "News Aggregator"),
    );
  }
}

//The async keyword allows the function to run asynchronously
//It won't block the execution of other code while it's running.
void sendRequest() async {
  String url =
      "https://api.nytimes.com/svc/topstories/v2/health.json?api-key=${EnvVars.NYTIMES_API_KEY}";
  //NETWORK CALL
  //sends http get request from the API endpoint
  //The await keyword is used to wait for the response from the server before continuing the execution of the code.
  // The response from the API is stored in a http.Response object, which is stored in the variable response.
  http.Response response = await http.get(Uri.parse(url));
  //parse the json data in the body into a map object and store in decode var
  Map decode = json.decode(response.body);
  //accesses the results field and stores it into a list
  List results = decode["results"];
  //itertes through the list printing its values
  for (var jsonObject in results) {
    // ignore: avoid_print
    print(jsonObject);
  }
}
