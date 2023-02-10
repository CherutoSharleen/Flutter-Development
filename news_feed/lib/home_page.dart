import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //runs evert time setState is called
  @override
  Widget build(BuildContext context) {
    //basic functionality layout of the application
    return Scaffold(
      appBar: AppBar(
        //value from MyHomePage Object from app.build method
        //set it us appbar title
        title: Text(widget.title),
      ),
      body: Container(),
    );
  }
}

class Post {
  String title;
  String summary;
  String thumbUrl;
  int timeStamp;
  String url;

  //constructor
  //when Post is called the constructor assigns the five attributes
  Post(this.title, this.summary, this.thumbUrl, this.timeStamp, this.url);

  //This method is used to extract data from a JSON object and create a Post object from it.
  static Post getPostFromJSON(dynamic jsonObject) {
    String title = jsonObject['title'];
    String url = jsonObject['url'];
    String summary = jsonObject['abstract'];
    //The Multimedia bit is an object with different values
    List multiMediaList = jsonObject['multimedia'];
    //
    // We want an average-quality image or nothing
    String thumbUrl = multiMediaList.length > 4 ? multiMediaList[3]['url'] : "";

    //converts date string to datetime object using the parse keyword
    int timeStamp =
        DateTime.parse(jsonObject['created_date']).millisecondsSinceEpoch;

    return Post(title, summary, thumbUrl, timeStamp, url);
  }

  //overrides the tostring method to return a string representation of the Post object
  @override
  String toString() {
    return "title = $title; summary = $summary; thumbnail = $thumbUrl; "
        "timeStamp = $timeStamp; url = $url";
  }
}
