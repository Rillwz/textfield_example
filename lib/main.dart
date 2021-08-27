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
                decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  icon: Icon(Icons.adb),
                  suffix: Container(
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),
                  prefixIcon: Icon(Icons.person),
                  // prefixText: 'Name: ',
                  //prefixStyle: TextStyle(color: Colors.blue),
                  labelText: 'Nama Lengkap',
                  labelStyle: TextStyle(color: Colors.blue),
                  hintText: 'Nama Lengkap-nya lhoh!',
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLength: 6,
                obscureText: true,
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
