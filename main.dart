import 'package:flutter/material.dart';

void main() {
  List<String> notes = [
    "Full name: Ada David-Worlu",
    "Slack Username: Ada David-Worlu",
    "Start.ng email: adaacin@yahoo.co.uk",
    "Tracks: Front End, Back End, Design, Mobile",
  ];

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("My Start.ng details"),
      ),
      body: Container(
          color: Colors.white10,
          padding: EdgeInsets.all(16.0),
          child: HomePage(notes)
      ),
    ),
  ));
}

class HomePage extends StatelessWidget {
  final List<String> notes;

  HomePage(this.notes);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, pos) {
        return Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                child: Text(notes[pos], style: TextStyle(
                  fontSize: 18.0,
                  height: 1.6,
                ),),
              ),
            )
        );

      },
    );
  }
}