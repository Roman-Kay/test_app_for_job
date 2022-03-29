// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({Key? key}) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isDone = false;
  TextEditingController todoController = TextEditingController(text: "");
  FocusNode focusNode = FocusNode();
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
                    color: Colors.white,
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
                    focusNode: focusNode,
                    controller: todoController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add task...",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
