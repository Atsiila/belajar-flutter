import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        
        color: Colors.red,
        image: DecorationImage(
          image: NetworkImage('https://png.pngtree.com/png-vector/20230726/ourmid/pngtree-coloring-pages-free-kids-printable-teddy-bear-drawing-in-pencil-cartoon-png-image_6746133.png'),
          fit: BoxFit.cover),
          ),
        child: Center(
            child: Text("belajar flutter",
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20),
        ),
      ),
    );
  }
}