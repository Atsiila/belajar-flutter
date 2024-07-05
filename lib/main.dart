import 'package:flutter/material.dart';
import 'package:myapp/screens/WisataScreen.dart';
// import 'package:myapp/listview/list_example.dart';
// import 'package:myapp/listview/list_separated.dart';
// import 'package:myapp/row_column/column_widgetr.dart';
// import 'package:myapp/container_widget.dart';
// import 'package:myapp/row_column/row_column.dart';
// import 'package:myapp/row_column/row_widget.dart';
// import 'package:myapp/row_column/latihan.dart';
// import 'package:myapp/row_column/latihan_2.dart';
// import 'package:myapp/listview/list_basic.dart';
// import 'package:myapp/listview/list_builder.dart';
import 'package:myapp/screens/about_screen.dart';
import 'package:myapp/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        '/about': (context) => AboutScreen(),
        '/home': (context)=> HomeScreen(),
        '/wisata': (context) => ListWisataScreen()
      },
      initialRoute: '/home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: HomeScreen(),
      ),
      );
    
  }
}
