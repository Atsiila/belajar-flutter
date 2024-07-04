import 'package:flutter/material.dart';
import 'package:myapp/row_column/column_widgetr.dart';
import 'package:myapp/container_widget.dart';
import 'package:myapp/row_column/row_column.dart';
import 'package:myapp/row_column/row_widget.dart';
import 'package:myapp/row_column/latihan.dart';
import 'package:myapp/row_column/latihan_2.dart';
import 'package:myapp/listview/list_basic.dart';
import 'package:myapp/listview/list_builder.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
const MyApp ({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text("Belajar Flutter"),
        ),
        body: ListBuild(),
        ),
    );
  }
}