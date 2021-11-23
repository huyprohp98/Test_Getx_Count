import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_home.dart';
class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller counterOther = Get.find();

  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(body: Center(child: Text("${counterOther.count}")));
  }
}