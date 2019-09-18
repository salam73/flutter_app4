import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: myBody()
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

Widget myBody() {
  return Column(
    children: <Widget>[
      Expanded(
        child: Row(
          children: <Widget>[
            MyWidget(
              colour: Colors.orange,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text('salam'),
                  Text('salam'),
                ],
              ),
            ),
            MyWidget(
              colour: Colors.purple,
            ),
          ],
        ),
      ),
      MyWidget(
        colour: Colors.red,
      ),
      MyWidget(
        colour: Colors.grey,
      ),
    ],
  );
}

class MyWidget extends StatelessWidget {
  MyWidget({this.colour, this.cardWidget});

  final Color colour;
  final Widget cardWidget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: this.colour,
          ),
          child: cardWidget),
    );
  }
}
