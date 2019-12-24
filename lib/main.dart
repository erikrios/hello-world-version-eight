import 'package:flutter/material.dart';

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        home: HomePage(),
      );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo Flutter'),
        ),
        body: Center(
          child: HelloButton(),
        ),
      );
}

class HelloButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => RaisedButton(
        child: Text('Hello'),
        onPressed: () {
          // action that will be doing
          action(context);
        },
      );

  void action(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Event Handlling'),
      content: Text('Hello, World!'),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}