import 'package:flutter/material.dart';
import 'package:flutter_youtube/delegates/data_search.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 25,
          child: Image.asset("assets/youtube.png"),
        ),
        elevation: 0,
        backgroundColor: Colors.black87,
        actions: [
          Align(alignment: Alignment.center, child: Text("0")),
          IconButton(onPressed: () {}, icon: Icon(Icons.star)),
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search)),
        ],
      ),
      body: Container(),
    );
  }
}
