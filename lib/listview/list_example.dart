import 'package:flutter/material.dart';

class ListExample extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'nama': 'Ujang Albert', 
      'umur': 18, 
      'alamat': 'Sumenep', 
      'photo': [
        'https://picsum.photos/200',
        'https://picsum.photos/200',
        'https://picsum.photos/200',
        'https://picsum.photos/200',
        'https://picsum.photos/200',
      ]
    },
    {
      'nama': 'Max Darso', 
      'umur': 20, 
      'alamat': 'Ciparay', 
      'photo': [
              'https://picsum.photos/200',
              'https://picsum.photos/200',
              'https://picsum.photos/200',
              'https://picsum.photos/200',
              'https://picsum.photos/200',
      ]
                

    },
    {
      'nama': 'Dede Rashford', 
      'umur': 25, 
      'alamat': 'Banjaran', 
      'photo': ['https://picsum.photos/200']
    },
    {
      'nama': 'Ujang Albert', 
      'umur': 18, 
      'alamat': 'Sumenep', 
      'photo': ['https://picsum.photos/200']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama: ${data[index]['nama']}'),
                Text('Umur: ${data[index]['umur'].toString()}'),
                Text('Alamat: ${data[index]['alamat']}'),
                Text('Galeri:'),
                SizedBox(
                  height: 100, // Set height for the SizedBox to wrap ListView
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data[index]['photo'].length,
                    itemBuilder: (context, indeximg) {
                      return Container(
                        margin: const EdgeInsets.only(right: 5.0),
                        child: Image.network(
                          data[index]['photo'][indeximg],
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}