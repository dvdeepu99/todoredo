import 'package:flutter/material.dart';
import 'package:todoredo/utilities/dialog_buttons.dart';

class DialogBox extends StatelessWidget {
  final MyController;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.MyController,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.orange,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: MyController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(text: "Save", onPressed: onSave),
                Buttons(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
