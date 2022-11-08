import 'package:flutter/material.dart';
import 'package:steckbrief_app/screens/second_screen.dart';
import 'package:steckbrief_app/screens/stack_screen.dart';

class DatenScreen extends StatelessWidget {
  const DatenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Datenschutzeinstellungen",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              macheZeile(
                  text: "Alter: 57"
              ),
              macheZeile(
                  text: "Augenfarbe: blau"
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen())
                  );

                },
                child: Text("DETAILS ANZEIGEN"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StackScreen())
                  );

                },
                child: Text("OK"),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget macheZeile({text: "hallo"}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        color: Colors.black12,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.blueAccent,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
