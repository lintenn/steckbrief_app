import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:steckbrief_app/screens/daten_screen.dart';
import 'package:steckbrief_app/screens/second_screen.dart';
import 'package:steckbrief_app/screens/stack_screen.dart';
import 'package:steckbrief_app/screens/urlaub_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Luis",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.asset("assets/sheldon.jpg"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 3000),
                      child: SecondScreen())
                  );
                  /*
                  Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => SecondScreen())
                  );
                  */
                },
                child: Text("Grüss Dich!"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StackScreen())
                  );

                },
                child: Text("Dich auch!"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DatenScreen())
                  );

                },
                child: Text("Datenschutzeinstellungen"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UrlaubScreen())
                  );

                },
                child: Text("Urlaub"),
              ),
              macheZeile(
                text: "Alter: 57"
              ),
              macheZeile(
                text: "Augenfarbe: blau"
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
                style: GoogleFonts.anekBangla(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                )

              ),
            ),
          );
  }
}
