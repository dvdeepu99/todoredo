import 'package:flutter/material.dart';
import 'package:todoredo/utilities/dialog_buttons.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final myController;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.myController,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.primary,
      content: SizedBox(
        height: 150,
        child: Padding(
          padding: const EdgeInsets.only(top: 13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                cursorColor: Colors.white,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
                controller: myController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(12)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  border: const OutlineInputBorder(),
                  hintText: "Enter your task",
                  hintStyle: const TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Buttons(text: "Save", onPressed: onSave),
                    Buttons(text: "Cancel", onPressed: onCancel),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
