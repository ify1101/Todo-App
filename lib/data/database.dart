import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];
  //reference the box
  final _myBox = Hive.box('my box');
  //run this method if its the first time of running the app
void createInitialData() {
  toDoList = [
    ['Make tutorial', false],
    ['Do Excercise', false ]
  ];
}
//load the data from database
void loadData(){
  toDoList = _myBox.get('TODOLIST');
}
//update database
  void updateDataBase(){
  _myBox.put('TODOLIST', toDoList);
  }

}