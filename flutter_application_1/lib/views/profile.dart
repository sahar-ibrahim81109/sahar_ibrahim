import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState(){
    super.initState();
    getEmail();
  }
  String userEmail="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.pink[100],
      body: Text(userEmail),
    );
  }
  getEmail() async {
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    userEmail=prefs.getString('email')?? "--";
    setState(() {});}}