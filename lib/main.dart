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
          Center(
            child: Container(
              height: 500,
              width: 350,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
            ),
          ),

          // Galeri Page
          Center(
            child: Text(''),
          ),

          // Profile Page
          Center(
            child: Container(
              height: 400,
              width: 350,
              child: Card(
                elevation: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dataList[0]['judul'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      dataList[0]['isi'],
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
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
