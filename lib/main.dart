import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Textfield Example'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: controller,
                onChanged: (_) {
                  setState(() {});
                },
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
