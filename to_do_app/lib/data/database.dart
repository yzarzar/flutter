import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('myBox');

  // run this method if this is the 1st time opening this app
  void createInitialData() {
    toDoList = [
      ['Make a tutorial', false],
      ['Do exercise', false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.getAt('TODOLIST' as int);
  }

  // update the data
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
