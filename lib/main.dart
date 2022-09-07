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
   return Scaffold(
     appBar: AppBar(
       title: const Text(
         'Aimed Labs',
       style: TextStyle(color: Colors.white),
       ),
       centerTitle: true,
     ),
     body:
     Padding(
     padding: EdgeInsets.all(_minimumPadding * 4),
        child: LayoutBuilder(
          builder: (context,constrains)=> Column(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                   Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(8,8),
                          ),
                        ],
                      ),
                      height: constrains.maxHeight * 0.24,
                      width: constrains.maxWidth * 1.0,
                      child : Stack(
                        children: [
                          Positioned(
                            top:20,
                            left:20,
                              child: Container(
                                height: constrains.maxHeight * 0.05,
                                width: constrains.maxWidth * 0.5,
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                ),

                          ),
                          ),

                          Positioned(
                            top: 80,
                            left: 20,
                            child: Container(
                            height: constrains.maxHeight * 0.05,
                            width: constrains.maxWidth * 0.9,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                            ),
                          ),
                          ),
                        ],

                      ),
                    ),
                ],
              ),
              //Card 2
          Padding(
            padding: EdgeInsets.only(
                top: _minimumPadding * 20),),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(8,8),
                          ),
                        ],
                      ),
                      height: constrains.maxHeight * 0.24,
                      width: constrains.maxWidth * 1.0,
                      child : Stack(
                        alignment: Alignment.topCenter,
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top:-10,
                            left: 90,
                            child: Container(
                              height: constrains.maxHeight * 0.05,
                              width: constrains.maxWidth * 0.5,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                              ),

                            ),
                          ),

                          Positioned(
                            top: 80,
                            left: 20,
                            child: Container(
                              height: constrains.maxHeight * 0.05,
                              width: constrains.maxWidth * 0.9,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
   );
  }

}
