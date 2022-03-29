// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_test_for_pushkeen/widgets/todo_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class TodoModel {
  bool isDone;

  TodoModel({
    required this.isDone,
  });
}

class _HomeScreenState extends State<HomeScreen> {
  List<TodoModel> todos = [];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        body: Center(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Container(
                constraints: const BoxConstraints(
                    minWidth: double.infinity, maxHeight: 600),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Theme.of(context).focusColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tasks',
                            style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).buttonColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: Theme.of(context).focusColor),
                            ),
                            child: Center(
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    todos.add(TodoModel(isDone: false));
                                  });
                                },
                                icon: Icon(
                                  Icons.add_rounded,
                                  color: Theme.of(context).indicatorColor,
                                ),
                                iconSize: 32,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 32),
                      Divider(
                        thickness: 1,
                        color: Theme.of(context).dividerColor,
                      ),
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          children:
                              todos.map((item) => const TodoItem()).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
