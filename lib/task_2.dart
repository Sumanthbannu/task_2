import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFD8EBFA),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Image.network('https://th.bing.com/th/id/OIP.rLnX2Wy1oeHN3cD15iKlKgHaL2?w=1000&h=1600&rs=1&pid=ImgDetMain'),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: Image.network('https://th.bing.com/th/id/OIP.rLnX2Wy1oeHN3cD15iKlKgHaL2?w=1000&h=1600&rs=1&pid=ImgDetMain'),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: Image.network('https://th.bing.com/th/id/OIP.rLnX2Wy1oeHN3cD15iKlKgHaL2?w=1000&h=1600&rs=1&pid=ImgDetMain'),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: Image.network('https://th.bing.com/th/id/OIP.rLnX2Wy1oeHN3cD15iKlKgHaL2?w=1000&h=1600&rs=1&pid=ImgDetMain'),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: Image.network('https://th.bing.com/th/id/OIP.rLnX2Wy1oeHN3cD15iKlKgHaL2?w=1000&h=1600&rs=1&pid=ImgDetMain'),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: Image.network('https://th.bing.com/th/id/OIP.rLnX2Wy1oeHN3cD15iKlKgHaL2?w=1000&h=1600&rs=1&pid=ImgDetMain'),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            top: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.favorite, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.comment, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.share, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Shorts"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle, size: 40), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: "Subscriptions"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "You"),
        ],
      ),
    );
  }
}