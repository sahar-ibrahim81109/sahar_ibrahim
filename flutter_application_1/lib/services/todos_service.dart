import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/todos_model.dart';
class todos_Service{
  String url="https://jsonplaceholder.typicode.com/todos";

  Future<List<Todos>> getTodos() async{
    List<Todos> todosList=[];
    final dio=Dio();
    final response=await dio.get(url);
    var data=response.data;
    data.forEach((jsonElement){
      Todos data=Todos.fromJson(jsonElement);
      todosList.add(data);
    });
    return todosList;
  }
}