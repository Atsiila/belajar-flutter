import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 92, 92, 92),
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCardWithLogo('https://png.pngtree.com/png-vector/20230726/ourmid/pngtree-coloring-pages-free-kids-printable-teddy-bear-drawing-in-pencil-cartoon-png-image_6746133.png'), // URL untuk Logo 1
                buildCardWithLogo('https://png.pngtree.com/png-vector/20230726/ourmid/pngtree-coloring-pages-free-kids-printable-teddy-bear-drawing-in-pencil-cartoon-png-image_6746133.png'), // URL untuk Logo 2
              ],
            ),
            SizedBox(height: 30),
            buildCardWithTextAndLogo('https://png.pngtree.com/png-vector/20230726/ourmid/pngtree-coloring-pages-free-kids-printable-teddy-bear-drawing-in-pencil-cartoon-png-image_6746133.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'), // URL untuk Logo 3
            SizedBox(height: 30),
            buildCardWithTextAndLogo('https://png.pngtree.com/png-vector/20230726/ourmid/pngtree-coloring-pages-free-kids-printable-teddy-bear-drawing-in-pencil-cartoon-png-image_6746133.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'), // URL untuk Logo 4
          ],
        ),
      ),
    );
  }

  Card buildCardWithLogo(String imageUrl) {
    return Card(
      color: Colors.grey[200],
      child: Container(
        width: 100,
        height: 100,
        alignment: Alignment.center,
        child: Image.network(
          imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Card buildCardWithTextAndLogo(String imageUrl, String text) {
    return Card(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              child: Image.network(
                imageUrl,
                width: 30,
                height: 30,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
