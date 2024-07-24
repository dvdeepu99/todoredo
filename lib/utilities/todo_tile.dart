import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  bool taskCompleted;
  Function(bool?)? onChanged;
  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 18.0),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.white,
              checkColor: Colors.orange,
              side: BorderSide(color: Colors.white, width: 2.2),
            ),
            Text(
              taskName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                decorationColor: Colors.white,
                decorationThickness: 3.5,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.orange[500],
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
