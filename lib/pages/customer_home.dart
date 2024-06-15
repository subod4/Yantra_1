import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yantra/pages/edit_information.dart';
import 'package:yantra/pages/profile.dart';
import 'package:yantra/pages/setting.dart';
import 'home.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({super.key});

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  final List<Widget> pages = [
    const Home(),
    const Profile(),
    const editInfo(),
    const Setting(),

  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("KatPark")),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'Edit Information',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('EDIT Information'),
              onTap: () {
                setState(() {
                  currentPage = 2;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.call),
              title: const Text('Contact'),
            ),
          ],
        ),
      ),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
