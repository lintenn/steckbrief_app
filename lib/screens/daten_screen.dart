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
              macheTitleZeile(
                  text: "Wir benötigen Ihre Zustimmung"
              ),
              macheZeile(
                  text: "En un lugar de La Mancha de cuyo nombre no quiero acordarme."
              ),
              macheZeile(
                text: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
              ),
              buttonNotDesired(
                  content: "DETAILS ANZEIGEN"
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
              Container(
                child: Text(
                  "Datenschulzzrichtigen",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                    fontSize: 14.0,
                  ),
                )
              )

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
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            color: Colors.blueAccent,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }

  Widget macheTitleZeile({text: "hallo"}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            color: Colors.blueAccent,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  Widget buttonDesired({required String content}) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        onPressed: () {},
        child: Text(content),
    );
  }

  Widget buttonNotDesired({required String content}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueGrey,
      ),
      onPressed: () {},
      child: Text(content),
    );
  }
}
