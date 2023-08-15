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
      title: 'PKTB JABAR',
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
                                    image: AssetImage('asset/2.jpg'),
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
                                  imagePath: 'asset/9.jpg',
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('asset/9.jpg'),
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
                Card(
                  elevation: 5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            'asset/3.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            "asset/5.jpg",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            "asset/7.jpg",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            'asset/1.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            "asset/2.jpg",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            "asset/4.jpg",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            'asset/1.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            "asset/2.jpg",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            "asset/4.jpg",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
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
                        Image.asset("asset/9.jpg"),
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

// Other classes remain the same.

class NewPage extends StatelessWidget {
  final List<List<String>> imageLists = [
    [
      'asset/h1_jambi.png',
      'asset/h1_yogya.png',
      'asset/h1_sulteng.png',
      'asset/h1_jatim.png'
    ],
    ['asset/4.jpg', 'asset/5.jpg', 'asset/6.jpg'],

    ['asset/7.jpg', 'asset/8.jpg', 'asset/9.jpg'],

    ['asset/7.jpg', 'asset/8.jpg', 'asset/9.jpg'],

    ['asset/7.jpg', 'asset/8.jpg', 'asset/9.jpg'],
    // Add more lists as needed
    // Add more lists as needed
  ];

  final List<List<Map<String, String>>> eventLists = [
    [
      {"name": "JAMBI", "Title": "Simpul Ngaduk Tanduk", "time": "14:00 AM"},
      {"name": "D.I. YOGYAKARTA", "Title": "Nyantrik", "time": "14:30 PM"},
      {
        "name": "SULAWESI TENGAH",
        "Title": "Negeri Seribu Megalit",
        "time": "15:00 PM"
      },
      {"name": "JAWA TIMUR", "Title": "Angklung Wangi", "time": "15:30 PM"}
    ],
    [
      {"name": "Event X", "Title": "Venue X", "time": "11:30 AM"},
      {"name": "Event Y", "Title": "Venue Y", "time": "03:00 PM"},
      {"name": "Event Z", "Title": "Venue Z", "time": "07:30 PM"},
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

/*
class NewPage extends StatelessWidget {
  final List<List<String>> imageLists = [
    [
      'asset/h1_jambi.png',
      'asset/h1_yogya.png',
      'asset/h1_sulteng.png',
      'asset/h1_jatim.png'
    ],

    ['asset/4.jpg', 'asset/5.jpg', 'asset/6.jpg'],

    ['asset/7.jpg', 'asset/8.jpg', 'asset/9.jpg'],

    ['asset/7.jpg', 'asset/8.jpg', 'asset/9.jpg'],

    ['asset/7.jpg', 'asset/8.jpg', 'asset/9.jpg'],
    // Add more lists as needed
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
        itemCount: imageLists.length,
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
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageLists[index].length,
                    itemBuilder: (context, innerIndex) {
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
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Card(
                              elevation: 6,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        imageLists[index][innerIndex]),
                                    fit: BoxFit.cover,
                                  ),
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
        },
      ),
    );
  }
}
*/

// Yang INI Buat New Tab TERBUKA

class NewImagePage extends StatelessWidget {
  final List<String> imageList1 = [
    'asset/1.jpg',
    'asset/2.jpg',
    'asset/3.jpg',
  ];

  final List<String> imageList2 = [
    'asset/4.jpg',
    'asset/5.jpg',
    'asset/6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acara Terbuka'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Pagelaran',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageList1.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(imageList1[index]),
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
              'Kuliner',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageList2.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageDetailPage(
                          imagePath: imageList2[index],
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(imageList2[index]),
                              fit: BoxFit.cover,
                            ),
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

class ImageDetailPage extends StatelessWidget {
  final String imagePath;

  ImageDetailPage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
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
