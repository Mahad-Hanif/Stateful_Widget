import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Widget', // App Title just like title define in head part of WEB
      theme: ThemeData( // Set theme for whole app
        primarySwatch: Colors.blueGrey,
      ),
      home: HomeScreen(), // the page to show, normally the starting page
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _amount = 0;

  void _increaseAmount()
  {
    setState(() {
      _amount = _amount + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
                'Increase the amount by Click the button',
                style: Theme.of(context).textTheme.headline5,
            ),
            Text(
                '\$$_amount',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            OutlinedButton(
              style: Theme.of(context).outlinedButtonTheme.style,
              onPressed: () => _increaseAmount(),
              child: Text(
                  'Increase it',
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


