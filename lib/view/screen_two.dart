import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/controller/app_controller.dart';
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
    final appController = context.read<AppController>();

    return Scaffold(
      body: Consumer<AppController>(
        builder: (context, controller, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  controller.counter.toString(),
                  style: TextStyle(fontSize: 50),
                ),
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
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          appController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
