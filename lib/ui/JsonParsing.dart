import 'package:flutter/material.dart';
import 'package:json_parsing/model/network.dart';

class JsonParsingSimple extends StatefulWidget {
  @override
  _JsonParsingSimpleState createState() => _JsonParsingSimpleState();
}

class _JsonParsingSimpleState extends State<JsonParsingSimple> {
  String url = 'https://jsonplaceholder.typicode.com/posts';
  Future data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parsing Json'),
      ),
    );
  }

  Future getData() async {
    data = Network(url).fetchData();

    data.then((value) => {print(value[0])});

    return data;
  }
}
