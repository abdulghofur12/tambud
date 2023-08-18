import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TKTB JABAR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 57, 18, 125),
        scaffoldBackgroundColor: Colors.grey[200],
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          button: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
      "isi": "Taman Budaya Jawa Barat adalah sebuah pusat kebudayaan ...",
      "gambar": "asset/3.jpg"
    },
  ];

  void _navigateToNewImagePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewImagePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'asset/11.png',
          height: 55,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          // Home Page
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 32),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Acara Terkini',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NewPage(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage('asset/1.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Tertutup',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 24),
                            GestureDetector(
                              onTap: _navigateToNewImagePage,
                              child: Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage('asset/terbuka.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Terbuka',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 48),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Poster Pagelaran',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 16),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ImageDetailPage(
                                  imagePath: 'asset/10.png',
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('asset/10.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ImageDetailPage(
                                  imagePath: 'asset/13.png',
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('asset/13.png'),
                                fit: BoxFit.cover,
                              ),
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

          // Galeri Page
          Center(
            child: Column(
              children: [
                
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _launchURL2,
                  child: Text('vidio'),
                ),
              ],
            ),
          ),

          // Profile Page
          Center(
            child: Container(
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        Image.asset("asset/13.png"),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle "About" button press
                        },
                        child: Text('About'),
                      ),
                      SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: _launchURL,
                        child: Text('Buku'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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

// Other classes remain the same
//======================BATAS MAIN===================================================
// Other classes remain the same.

class NewPage extends StatelessWidget {
  final List<List<String>> imageLists = [
    [
      'asset/h1_jambi.png',
      'asset/h1_yogya.png',
      'asset/h1_sulteng.png',
      'asset/h1_jatim.png'
    ],
    [
      'asset/h2_sulsel.png',
      'asset/h2_kaltim.png',
      'asset/h2_sulteng.png',
      'asset/h2_jakarta.png',
      'asset/h2_banten.png',
      'asset/h2_jateng.png'
    ],

    ['asset/7.jpg', 'asset/8.jpg', 'asset/9.jpg'],

    ['asset/7.jpg', 'asset/8.jpg', 'asset/9.jpg'],

    ['asset/7.jpg', 'asset/8.jpg', 'asset/9.jpg'],
    // Add more lists as needed
    // Add more lists as needed
  ];

  final List<List<Map<String, String>>> eventLists = [
    [
      {
        "name": "Jambi",
        "Title": "Simpul Ngaduk Tanduk",
        "time": "14:00 - 14:30 PM"
      },
      {
        "name": "D.I. Yogyakarta",
        "Title": "Nyantrik",
        "time": "14:30 - 15:00 PM"
      },
      {
        "name": "Sulawesi Tengah",
        "Title": "Negeri Seribu Megalit",
        "time": "15:00 - 15:30 PM"
      },
      {
        "name": "Jawa Timur",
        "Title": "Angklung Wangi",
        "time": "15:30 - 16:00 PM"
      }
    ],

    [
      {
        "name": "Sulawesi Selatan",
        "Title": "Tari Appakase're",
        "time": "16:30 - 17:00 PM"
      },
      {
        "name": "Kalimantan Timur",
        "Title": "Sang Mulawarman",
        "time": "17:00 - 17:30 PM"
      },
      {
        "name": "Sulawesi Tenggara",
        "Title": "Karia(Pingitan)",
        "time": "19:30 - 20:00 PM"
      },
      {
        "name": "D.K.I Jakarta",
        "Title": "Tari Warna Warni",
        "time": "20:00 - 20:30 PM"
      },
      {"name": "Banten", "Title": "Tuah Kaibon", "time": "20:30 - 21:00 PM"},
      {
        "name": "Jawa Tengah",
        "Title": "Rewanda Rewaka",
        "time": "21:00 - 21:30 PM"
      },
    ],

    [
      {"name": "Event A", "Title": "Venue X", "time": "11:30 AM"},
      {"name": "Event B", "Title": "Venue Y", "time": "03:00 PM"},
      {"name": "Event C", "Title": "Venue Z", "time": "07:30 PM"},
    ],

    [
      {"name": "Event O", "Title": "Venue X", "time": "11:30 AM"},
      {"name": "Event P", "Title": "Venue Y", "time": "03:00 PM"},
      {"name": "Event Q", "Title": "Venue Z", "time": "07:30 PM"},
    ],

    [
      {"name": "Event H", "Title": "Venue X", "time": "11:30 AM"},
      {"name": "Event I", "Title": "Venue Y", "time": "03:00 PM"},
      {"name": "Event J", "Title": "Venue Z", "time": "07:30 PM"},
    ],
    // Add more event lists as needed
  ];

  final List<String> dayTitles = [
    'Senin, 21 Agustus 2023',
    'Selasa, 22 Agustus 2023',
    'Rabu, 23 Agustus 2023',
    'Kamis, 24 Agustus 2023',
    'Jumat, 25 Agustus 2023'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acara Tertutup'),
      ),
      body: ListView.builder(
        itemCount: eventLists.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dayTitles[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 255,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: eventLists[index].length,
                    itemBuilder: (context, innerIndex) {
                      final event = eventLists[index][innerIndex];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDetailPage(
                                imagePath: imageLists[index][innerIndex],
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(16)),
                                  child: Image.asset(
                                    imageLists[index][innerIndex],
                                    width: 180,
                                    height: 160,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        event["name"]!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        event["Title"]!,
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        event["time"]!,
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
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
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// Yang INI Buat New Tab TERBUKA

class NewImagePage extends StatelessWidget {
  final String imageUrl = 'asset/9.jpg'; // Change this to the desired image URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acara Tertutup'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Card(
            elevation: 5,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// UNTUK POSTER atau IMAGE DETAIL

class ImageDetailPage extends StatelessWidget {
  final String imagePath;

  ImageDetailPage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poster Detail'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: 'imageDetail',
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  final Uri url = Uri.parse(
      'https://drive.google.com/file/d/1QSoBm7z_zHnEfohph0yoUIc4R4VDTe7m/view');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

_launchURL2() async {
  final Uri url =
      Uri.parse('https://www.youtube.com/@uptdpengelolaankebudayaand210');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
