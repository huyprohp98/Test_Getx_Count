import 'package:app_count_getx/controller_home.dart';
import 'package:app_count_getx/sc_other.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Controller counter = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(

        title: Obx(() => Text("Clicks : ${counter.count}")),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Đi đến Other"),
          onPressed: () => Get.to(Other()),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                counter.increment();
              },
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              child: Icon(Icons.minimize),
              onPressed: () {
                counter.minus();
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
