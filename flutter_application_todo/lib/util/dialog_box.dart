// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[400],
      content: SizedBox(
        height: 130,
        width: 400,
        child: Column(
          children: [
            //user input
            TextField(
              style:TextStyle(color: Colors.white),
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "add a new task",
                  hintStyle: TextStyle(color: Colors.white54)),
            ),
            //create and cancel button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //create button
                MyButton(
                  text: "Save",
                  onpressed: onSave,
                ),
                const SizedBox(
                  width: 8,
                  height: 60,
                ),
                //cancel button
                MyButton(
                  text: "Cancel",
                  onpressed: onCancel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
