import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widget/mybutton.dart';
import 'package:flutter_application_1/views/secondscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _formkey=GlobalKey<FormState>();
    final TextEditingController emailcontroller=TextEditingController();
    return Scaffold(
    backgroundColor: Colors.pink[100],
    appBar:AppBar(centerTitle:true,title:Text('Welcom to first Page'),backgroundColor: Colors.purple[300],),
    body: 
    Form(
      key: _formkey,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(right: 100,left: 100,top: 20,bottom: 20),
            child: TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(label: Text('Email')),
              validator: (value){
                if(value!.contains('@')){
                  return null;}
                else{
                  return'Not Valid email';}
              },
            ),),
            Padding(padding: const EdgeInsets.only(right: 100,left: 100,top: 20,bottom: 20),
            child: TextFormField(
              decoration: InputDecoration(label: Text('Password')),
              validator: (value){
                if (value!.length>8){
                  return null;}
                else{
                  return'Password should contain 8 characters';}},
            ),
            ),
            InkWell(
              onTap: (){
                if(_formkey.currentState!.validate()){
                  saveEmail(emailcontroller.text);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context)=> SecondPage(
                      email:emailcontroller.text,
                    )),);}
                else{
                  emailcontroller.clear();}
              },
              child:
               mybutton(label: 'LogIn'),
            )],), ),),);}
  saveEmail(String email) async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    prefs.setString('email',email);}
}