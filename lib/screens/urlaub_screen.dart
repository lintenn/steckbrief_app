

import 'package:flutter/material.dart';

// see https://github.com/drmilde/steckbrief_app

class UrlaubScreen extends StatelessWidget {
  const UrlaubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text =
        "Luxuriöses Urlaubserlebnis im edlen landestypischen Ambiente";
    return Scaffold(
      drawer: Drawer(),

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 77, 140),
        title: Text(
          "Ab in den Urlaub",
        ),
        actions: [PopupMenuButton(
          // add icon, by default "3 dot" icon
          // icon: Icon(Icons.book)
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text("Aktion 0"),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text("Aktion 1"),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text("Aktion 2"),
                ),
              ];
            }, onSelected: (value) {
          if (value == 0) {
            print("Aktion 0 wurde ausgewählt.");
          } else if (value == 1) {
            print("Aktion 1 wurde ausgewählt.");
          } else if (value == 2) {
            print("Aktion 2 wurde ausgewählt.");
          }
        }),
        ],
      ),
      body: Column(
        children: [
          _searchBar(),
          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/hotel.jpg"),
                    fit: BoxFit.cover,
                  )
                ),
              ),

              Positioned(
                  top: 40,
                  left: 0,
                  height: 32,
                  width: 400,

                  child: Container(
                    height: 32,
                      color: Color.fromARGB(255, 42, 77, 140),

                    child: Center(
                      child: Text(
                          "LUXURIÖSES URLAUBSERLEBNIS IM EDLEN ...",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )
                      )
                    )
                  ),
              ),
              Positioned(
                top: 15,
                left: 0,
                height: 150,
                width: 500,
                child: Container(
                    height: 32,
                    color: Color.fromARGB(100, 42, 77, 30),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 350,
                              child: Text(
                                  "5* Design-Wunderwerk an der Marina Rubicón",

                                  style: TextStyle(
                                    color: Color.fromARGB(255, 42, 77, 140),
                                    fontSize: 18,
                                  )
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 280,
                              color: Color.fromARGB(100, 42, 77, 30),
                              child: Text(
                                  "1 Woche pro person ..."

                              ),
                            )
                          ],
                        )
                    )
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.greenAccent,
                child: Image.asset("assets/bucht.jpg"),
            ),
          ),
        ],
      )
    );
  }

  Widget _searchBar() {
    return Container( // search bar
          height: 80,
          width: double.infinity,
          color: Color.fromARGB(255, 42, 77, 140),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: 400,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    Text(
                      "Ziel / Region / Hotel",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: 400,
                color: Colors.white,
              )
            ],
          ),

        );
  }
}
