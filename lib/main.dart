import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GB Delivery',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color.fromARGB(255, 245, 245, 245),
      ),
      home: const HomeScreen(),
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
  final List<Map<String, dynamic>> _items = [
    {
      'name': 'Burger',
      'image': 'assets/icons/burger.png',
      'rating': 4,
      'count': 0
    },
    {
      'name': 'Pizza',
      'image': 'assets/icons/pizza.png',
      'rating': 5,
      'count': 0
    },
    {
      'name': 'Firfir',
      'image': 'assets/icons/firfir.png',
      'rating': 4.5,
      'count': 0
    },
    {
      'name': 'Tibis Firfir',
      'image': 'assets/icons/tibis firfir.png',
      'rating': 4.5,
      'count': 0
    },
    {
      'name': 'Firfir Besiga',
      'image': 'assets/icons/firfir besiga.png',
      'rating': 4.5,
      'count': 0
    },
    {
      'name': 'Firfir Beayib',
      'image': 'assets/icons/firfir beayib.png',
      'rating': 4.5,
      'count': 0
    },
    {
      'name': 'Enkulal Firfir',
      'image': 'assets/icons/enkulali firfir.png',
      'rating': 4.5,
      'count': 0
    },
    {
      'name': 'Enkulal Silis',
      'image': 'assets/icons/enkulali silis.png',
      'rating': 4.5,
      'count': 0
    },
  ];

  void _incrementCount(int index) {
    setState(() {
      _items[index]['count']++;
    });
  }

  void _decrementCount(int index) {
    setState(() {
      if (_items[index]['count'] == 0) return;
      _items[index]['count']--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('GB Delivery'),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 243, 247, 33),
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: const Color.fromARGB(255, 42, 46, 29),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          color: const Color.fromARGB(158, 215, 255, 85),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: const Color.fromARGB(158, 215, 255, 85),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
            color: const Color.fromARGB(158, 215, 255, 85),
          ),
        ],
        centerTitle: true,
        elevation: 1.0,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 241, 255, 194),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(162, 156, 155, 53),
                    Color.fromARGB(195, 108, 13, 197),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(85),
                  topRight: Radius.circular(85),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.9),
                    spreadRadius: 20,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromARGB(139, 245, 27, 27),
                                width: 0.5,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 49, 34, 34)
                                      .withOpacity(0.9),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: const Offset(-2, 3),
                                ),
                              ]),
                          child: GestureDetector(
                            onTap: () {
                              print('Edit Profile Picture');
                            },
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/image/image.png'),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(Icons.auto_fix_high,
                                    color: Color.fromARGB(255, 84, 255, 5),
                                    size: 20,
                                    semanticLabel: 'Edit Profile Picture'),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Dear,Biruk',
                          style: TextStyle(
                            color: Color.fromARGB(255, 217, 219, 197),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(Icons.star, color: Colors.yellow),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 30, left: 200, right: 30, bottom: 70),
                      child: Lottie.asset(
                        'assets/icons/delicious.json',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 60,
                    child: Lottie.asset(
                      'assets/icons/Animation - 1737840119546.json',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Positioned(
                    bottom: 30,
                    right: 10,
                    child: Text(
                      'GB Delivery',
                      style: TextStyle(
                        color: Color.fromARGB(223, 255, 209, 2),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 10,
                    right: 10,
                    child: Text(
                      'Made By: Biruk Zewde',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Orders'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Addresses'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Payment Methods'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help Center'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 231, 243, 190),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  buildFeaturedSection(),
                  buildPopularItemsSection(),
                  buildSpecialOffersSection(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 42, 46, 29),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.fastfood),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/icons8-telegram.svg',
                width: 24,
                height: 24,
                color: _selectedIndex == 1
                    ? const Color.fromARGB(255, 221, 253, 42)
                    : const Color.fromARGB(151, 22, 214, 47),
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Lottie.asset(
                'assets/icons/burger for the drawer.json',
                width: 24,
                height: 24,
              ),
              label: 'Orders',
            ),
          ],
          backgroundColor: Colors.transparent,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedItemColor: const Color.fromARGB(255, 218, 255, 7),
          unselectedItemColor: const Color.fromARGB(185, 210, 255, 12),
          showUnselectedLabels: true,
        ),
      ),
    );
  }

  Widget buildFeaturedSection() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(221, 224, 13, 0.795),
            Color.fromARGB(143, 139, 165, 23),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Featured Items',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            child: Row(
              children: _items
                  .map(
                    (item) => buildFeaturedItem(
                      item['name'],
                      item['image'],
                      item['count'],
                      _items.indexOf(item),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFeaturedItem(
      String name, String imagePath, int count, int index) {
    return GestureDetector(
      onDoubleTap: () => _decrementCount(index),
      onLongPress: () => _decrementCount(index),
      onTap: () => _incrementCount(index),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: const Offset(0, 5),
                ),
              ],
              border: Border.all(
                  width: 1,
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          if (count > 0)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  count.toString(),
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 7, 4, 4),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildPopularItemsSection() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Popular Items',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              buildPopularItem('burger', 'assets/icons/burger.png', '7'),
              buildPopularItem('pizza', 'assets/icons/pizza.png', '4.5'),
              buildPopularItem('sushi', 'assets/icons/sushi.png', '4'),
            ]),
          ),
        ],
      ),
    );
  }

  Widget buildPopularItem(String name, String imagePath, String rating) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 16),
              Text(
                rating.toString(),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSpecialOffersSection() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 99, 71),
            Color.fromARGB(255, 255, 69, 0),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Special Offers',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildSpecialOffer('50% Off', 'assets/icons/discount.png'),
                _buildSpecialOffer('Buy 1 Get 1', 'assets/icons/gift.png'),
                _buildSpecialOffer(
                    'Free Delivery', 'assets/icons/delivery.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialOffer(String title, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Text('Welcome to the Settings Screen!'),
      ),
    );
  }
}

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
      ),
      body: const Center(
        child: Text('Welcome to the Help Screen!'),
      ),
    );
  }
}
