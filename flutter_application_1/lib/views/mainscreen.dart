
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/todos_model.dart';
import 'package:flutter_application_1/services/todos_service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Todos> data=[];
  bool isLoading=true;
  getTodos() async{
    data=await todos_Service().getTodos();
    isLoading=false;
    setState(() {});

  }
  @override
  void initState(){
    super.initState();
    getTodos();
  }

    @override
  Widget build(BuildContext context) {
    return isLoading?Center(
      child: CircularProgressIndicator(),)
      :ListView.builder(
      itemCount: data.length,
      itemBuilder:(BuildContext context,  int index) {

        return ListTile(
          leading: Text(data[index].id.toString()),
          title: Text(data[index].title ??"--"),
          subtitle: Text(data[index].completed.toString()),
          trailing: Icon(Icons.home),
        )
        ;
      },
      );
  }
}