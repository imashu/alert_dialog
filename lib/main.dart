import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  Future _showalert(BuildContext context, String msg) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert Dialog'),
            content: Text(msg),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldstate,
      appBar: AppBar(
        title: const Text('Snack Bar'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Add widgets here'),
                ElevatedButton(
                    onPressed: (() => _showalert(context, 'You are under 18')),
                    child: const Text('Vote')),
              ],
            ),
          )),
    );
  }
}
