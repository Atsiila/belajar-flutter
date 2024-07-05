import 'package:flutter/material.dart';
import 'detail_wisata_screen.dart';

class ListWisataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Ubud",
      "kota": "Bali",
      "image": "assets/image/ubud.jpg",
      "gallery": [
        "assets/image/ubud1.jpg",
        "assets/image/ubud2.jpg",
        "assets/image/ubud3.jpg"
      ],
      "desc": "Ubud adalah sebuah destinasi wisata populer di Bali yang terkenal dengan seni, budaya, dan alam yang indah. Terletak di antara sawah dan jurang yang curam, Ubud menawarkan pengalaman yang tak terlupakan bagi wisatawan."
    },
    {
      "nama": "Nusa Penida",
      "kota": "Bali",
      "image": "assets/image/nusapenida.jpg",
      "gallery": [
        "assets/image/nusapenida1.jpg",
        "assets/image/nusapenida2.jpg",
        "assets/image/nusapenida3.jpg"
      ],
      "desc": "Nusa Penida adalah sebuah pulau kecil di sebelah tenggara Bali, terkenal dengan pantai yang indah, tebing-tebing yang menakjubkan, dan kehidupan bawah laut yang luar biasa. Tempat ini ideal untuk snorkeling dan diving."
    },
    {
      "nama": "Pantai Kuta",
      "kota": "Bali",
      "image": "assets/image/kuta.jpg",
      "gallery": [
        "assets/image/kuta1.jpg",
        "assets/image/kuta2.jpg",
        "assets/image/kuta3.jpg"
      ],
      "desc": "Pantai Kuta adalah salah satu pantai paling terkenal di Bali, dikenal dengan pasir putihnya yang lembut, ombak yang cocok untuk berselancar, dan pemandangan matahari terbenam yang menakjubkan. Kuta juga menawarkan berbagai fasilitas hiburan malam."
    },
    {
      "nama": "Gunung Rinjani",
      "kota": "Lombok",
      "image": "assets/image/rinjani.jpg",
      "gallery": [
        "assets/image/rinjani1.jpg",
        "assets/image/rinjani2.jpg",
        "assets/image/rinjani3.jpg"
      ],
      "desc": "Gunung Rinjani adalah gunung berapi tertinggi kedua di Indonesia yang terletak di Pulau Lombok. Mendaki Gunung Rinjani menawarkan pemandangan spektakuler dan pengalaman yang menantang bagi para pendaki."
    },
    {
      "nama": "Ranca Upas",
      "kota": "Bandung",
      "image": "assets/image/rancaupas.jpg",
      "gallery": [
        "assets/image/rancaupas1.jpg",
        "assets/image/rancaupas2.jpg",
        "assets/image/rancaupas3.jpg"
      ],
      "desc": "Ranca Upas adalah area perkemahan dan konservasi rusa yang terletak di Ciwidey, Bandung. Tempat ini menawarkan pengalaman berkemah yang unik dengan pemandangan alam yang indah dan udara sejuk."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinasi Wisata'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: wisataData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailWisataScreen(
                        nama: wisataData[index]["nama"],
                        kota: wisataData[index]["kota"],
                        image: wisataData[index]["image"],
                        gallery: wisataData[index]["gallery"],
                        desc: wisataData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(wisataData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    wisataData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}