
import 'package:flutter/material.dart';
import 'package:hiveapp/NewNotepage.dart';

class MyFloatingButton extends StatelessWidget {
  const MyFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber, shape: const CircleBorder()),
      child: const Icon(
        Icons.add,
        color: Colors.pink,
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => NoteEditingPage()));
      },
    );
  }
}
