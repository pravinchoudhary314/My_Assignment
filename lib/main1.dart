import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aimed Labs',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Assignment'),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatelessWidget{
  const MyHomePage({Key? key, required String title}):super(key: key);
  final _minimumPadding = 5.0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(
      title: const Text(
        'Aimed Labs',
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
    ),
      body: Card(
        color: Colors.redAccent,
       child: Padding(
         padding: EdgeInsets.only(
             top: _minimumPadding * 0.2, bottom: _minimumPadding * 0.2),
       ),
      ),
    );
  }

}