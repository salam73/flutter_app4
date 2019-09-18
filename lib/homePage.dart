import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myValue = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
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
            colour: Colors.grey,
            cardWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(myValue.toString()),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xffb15555),
                    overlayColor: Color(0x29b15555),
                  ),
                  child: Slider(
                    min: 0,
                    max: 10,
                    value: myValue.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        myValue = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          MyWidget(
            colour: Colors.grey,
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
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
