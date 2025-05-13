import 'package:flutter/material.dart';
import 'package:test_provider/model/note.dart';
import 'package:test_provider/view/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => ScreenTwo(
                      note: Note(
                        title: 'Hôm nay ăn gì',
                        content: "Ăn cơm sườn",
                      ),
                    ),
              ),
            );
          },
          child: Text('Chuyển màn'),
        ),
      ),
    );
  }
}
