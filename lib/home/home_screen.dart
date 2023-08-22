import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprovider/todolist_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<ToDoListState>().addToDolist("asd");
      }),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Consumer<ToDoListState>(
            builder: (context, value, child) {
              return Column(
                children: [
                  for (var i = 0; i < ToDoListState.todoList.length; i++)
                    ListTile(
                      leading: Text(i.toString()),
                      title: Text(ToDoListState.todoList[i]),
                      trailing: IconButton(
                        onPressed: () {
                          context.read<ToDoListState>().deleteToDolist(i);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
