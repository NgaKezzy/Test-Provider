import 'package:flutter/material.dart';
import 'package:test_provider/model/note.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key, required this.note});

  final Note note;

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.note.title),
            Text(widget.note.content),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Quay lại'),
            ),
          ],
        ),
      ),
    );
  }
}
