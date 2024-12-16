import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  //reference our box
  final _mybox = Hive.box('mybox');

  //1st time opening
  void createInitDatabase() {
    toDoList = [
      ["study", false],
      ["exercise", false],
    ];
  }

  //load data from db
  void loadData() {
    toDoList = _mybox.get('TODOLIST');
  }

  //updata database
  void updateDataBase() {
    _mybox.put('TODOLIST', toDoList);
  }
}
