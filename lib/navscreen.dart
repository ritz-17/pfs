import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:police_feedback/Feedback.dart';
import 'package:police_feedback/homef.dart';
import 'package:police_feedback/status.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    home(),
    StatusFrom(),
    FeedbackPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.blue,
        color: Colors.blue,
        animationDuration: const Duration(milliseconds: 400),
        items: const [
          CurvedNavigationBarItem(
            child: Icon(Icons.home),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.punch_clock),
            label: 'Status',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.telegram),
            label: 'Feedbacks',
          ),
        ],
        onTap: _onItemTapped,
      ),
      body: _screens[_selectedIndex],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NavScreen(),
  ));
}
