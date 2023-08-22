import 'package:flutter/material.dart';

class ToDoListState extends ChangeNotifier {
  //to do set type
  static List<String> todoList = [];
  //todo add
  addToDolist(String value) {
    todoList.add(value);
    notifyListeners();
  }

  //todo delete
  deleteToDolist(index) {
    todoList.removeAt(index);
    notifyListeners();
  }
}
