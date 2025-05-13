import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/controller/app_controller.dart';
import 'package:test_provider/model/note.dart';
import 'package:test_provider/view/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final appController = context.read<AppController>();
    return Scaffold(
      body: Center(
        child: Consumer<AppController>(
          builder: (context, controller, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  controller.counter.toString(),
                  style: TextStyle(fontSize: 50),
                ),

                Text(
                  controller.note?.title.toString() ?? 'Chưa có tiêu đề',
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  controller.note?.content.toString() ?? 'Chưa có nội dung',
                  style: TextStyle(fontSize: 22),
                ),
                ElevatedButton(
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
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          appController.setSetNote(
            Note(title: 'Đi chơi đâu', content: "Hồ Tây bạn ơi !"),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
