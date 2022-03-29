// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  TodoItem({Key? key}) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isDone = false;
  TextEditingController todoController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isDone = !isDone;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Theme.of(context).accentColor,
                        Theme.of(context).hoverColor
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Theme.of(context).cardColor),
                  ),
                ),
                Icon(
                  isDone ? Icons.check : null,
                  color: Theme.of(context).textSelectionColor,
                ),
              ],
            ),
            const SizedBox(width: 10),
            Expanded(
                child: TextFormField(
                    autofocus: true,
                    controller: todoController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add task...",
                      hintStyle: TextStyle(
                        color: Theme.of(context).textSelectionColor,
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
