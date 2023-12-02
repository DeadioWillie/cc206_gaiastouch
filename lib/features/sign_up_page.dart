import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field with Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _onButtonPressed() {
    String enteredText = _textEditingController.text;
    // Do something with the entered text
    print('Entered text: $enteredText');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field with Button'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Enter username',
              ),
            ),
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Enter password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _onButtonPressed,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}