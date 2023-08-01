import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PKTB JABAR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 57, 18, 125),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Map<String, dynamic>> dataList = [
    {
      "judul": "Profile",
      "isi":
          "Taman Budaya Jawa Barat adalah sebuah pusat kebudayaan yang terletak di Jawa Barat, Indonesia. Tempat ini didedikasikan untuk melestarikan, mempromosikan, dan mengembangkan berbagai aspek kebudayaan Jawa Barat. Taman Budaya Jawa Barat menyajikan berbagai acara seni dan budaya yang meliputi pertunjukan musik, tari, teater, seni rupa, dan aktivitas budaya lainnya.Taman Budaya Jawa Barat adalah tempat yang penting dalam menghargai dan mempromosikan kekayaan budaya Jawa Barat. Dengan berbagai acara seni dan budaya yang diselenggarakan, tempat ini mengajak masyarakat untuk menghargai dan menikmati keindahan seni dan budaya tradisional, serta mendorong partisipasi aktif dalam melestarikan kebudayaan Jawa Barat untuk generasi mendatang.",
      "gambar": "asset/3.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          // Home Page
          SingleChildScrollView(
            child: Center(
              // Wrap the Container with Center widget
              child: Container(
                height: 1500,
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Temu Karya Taman Budaya Se-Indonesia',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NewPage(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width:
                                    150, // Ukuran lebar container sesuaikan dengan kebutuhan
                                height:
                                    100, // Ukuran tinggi container sesuaikan dengan kebutuhan
                                child: Card(
                                  elevation: 6,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                        image: AssetImage('asset/1.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16), // Adding space between the cards
                          InkWell(
                            onTap: () {
                              // Handle button press
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width:
                                    150, // Ukuran lebar container sesuaikan dengan kebutuhan
                                height:
                                    100, // Ukuran tinggi container sesuaikan dengan kebutuhan
                                child: Card(
                                  elevation: 6,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                        image: AssetImage('asset/2.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Poster Pagelaran',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 400,
                            height: 200, // Height for the landscape photo
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              image: DecorationImage(
                                image: AssetImage('asset/7.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  8), // Adding space between the photos and the text
                          Container(
                            width: 250,
                            height: 500, // Height for the portrait photo
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              image: DecorationImage(
                                image: AssetImage('asset/8.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Galeri Page
          Center(
              // ... Bagian kode sebelumnya ...
              ),

          // Profile Page
          Center(
              // ... Bagian kode sebelumnya ...
              ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Galeri',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  // List data gambar dari assets untuk Hari Ini
  final List<String> imageListHariIni = [
    'asset/1.jpg',
    'asset/2.jpg',
    'asset/3.jpg',
    // Tambahkan gambar lainnya jika diperlukan
  ];

  // List data gambar dari assets untuk Besok
  final List<String> imageListBesok = [
    'asset/4.jpg',
    'asset/5.jpg',
    'asset/6.jpg',
    // Tambahkan gambar lainnya jika diperlukan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acara Tertutup'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Hari Ini',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 150, // Tinggi kontainer sesuaikan dengan kebutuhan
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageListHariIni.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width:
                        150, // Ukuran lebar container sesuaikan dengan kebutuhan
                    height:
                        150, // Ukuran tinggi container sesuaikan dengan kebutuhan
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(imageListHariIni[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Besok',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 150, // Tinggi kontainer sesuaikan dengan kebutuhan
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageListBesok.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width:
                        150, // Ukuran lebar container sesuaikan dengan kebutuhan
                    height:
                        150, // Ukuran tinggi container sesuaikan dengan kebutuhan
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(imageListBesok[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
