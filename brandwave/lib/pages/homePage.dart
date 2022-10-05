import "package:flutter/material.dart";
import 'package:brandwave/utils/serviceCard.dart';
import 'package:brandwave/utils/recentAdCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10.0),
        children: [
          Card(
            margin: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Brandwave",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Divider(height: 5.0,color: Colors.transparent,),
                      Text(
                        "Good Morning, Andrew",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(220, 36, 37, 37),
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      "assets/images/profiledefault.png",
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Our Services",
                  style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                    color: Color.fromARGB(220, 36, 37, 37),
                  ),
                ),
              ),
              const Divider(height: 10.0,color: Colors.transparent,),
              Wrap(
                spacing: 5.0,
                runSpacing: 4.0,
                direction: Axis.horizontal,
                children: const [
                  ServiceCard(serviceName: "Book Ad Space", serviceIcon: Icons.ads_click,route: '/bookSpace'),
                  ServiceCard(serviceName: "Upload Ad", serviceIcon: Icons.upload,route: '/uploadAd'),
                  ServiceCard(serviceName: "Track Ad", serviceIcon: Icons.pin_drop_rounded,route: '/trackAd'),
                  ServiceCard(serviceName: "Make Deposit", serviceIcon: Icons.payments_sharp,route: '/deposit'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Recent Ads",
                  style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                    color: Color.fromARGB(220, 36, 37, 37),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  RecentAdvertCard(imageUrl:"https://images.unsplash.com/photo-1511268559489-34b624fbfcf5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWR2ZXJ0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                  SizedBox(height: 5),
                  RecentAdvertCard(imageUrl:"https://images.unsplash.com/photo-1551120239-3d20b45dcda7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGFkdmVydHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                  SizedBox(height: 5),
                  RecentAdvertCard(imageUrl:"https://images.unsplash.com/photo-1538650261995-3a55d1353e5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2Ftc3VuZyUyMG5vdGUlMjAxMHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                  SizedBox(height: 5),
                ],
              ),
            ],
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
            icon: Icon(Icons.payments),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 58, 144, 214),
        onTap: _onItemTapped,
      ),
    );
  }
}