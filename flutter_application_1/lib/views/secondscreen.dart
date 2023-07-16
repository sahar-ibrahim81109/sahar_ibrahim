import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'profile.dart';
import 'settings_screen.dart';

class SecondPage extends StatefulWidget {
  final String email;
  const SecondPage({super.key,required this.email});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int selectedIndex=0;
  List<Widget> page=[
    MainScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ]
  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],

      appBar:AppBar(centerTitle:true,title:Text('Welcom To Second Page'),backgroundColor: Colors.purple[300],
      ),
      body:
       page[selectedIndex],
      //Column(children: [
      //Text(widget.email),
      //],
      //),
      
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon:Icon(Icons.person),label: 'Person'),
        BottomNavigationBarItem(icon:Icon(Icons.settings),label: 'Settings'),
        ],
        onTap: (pageindex){
          selectedIndex=pageindex;
          setState(() {});
        },
        ),

    );
  }
}