import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello world",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hello world',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Hello World Travel',
                style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
              ),
              Text("Discouver the world"),
              Image.network(
                  'https://i.pinimg.com/originals/55/51/4d/55514dfd272080a0f6f0e2074205aa80.jpg'),
              // TextButton(
              //     onPressed: () {
              //       ContactUs(context);
              //     },
              //     child: Text('Contact us'))
              OutlinedButton(
                  onPressed: () => _dialogBuilder(context),
                  child: const Text('Open Dialog')),
            ],
          ),
        ),
      ),
    );
  }
}

void ContactUs(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          title: Text('Contact us'),
          content: Text('Mail us @gracealiko08@gmail.com'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            )
          ]);
    },
  );
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Basic dialog title'),
          content: const Text('A dialog is a type of modal window that\n'
              'appears in front of app content to\n'
              'provide critical information, or prompt\n'
              'for a decision to be made.'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}
