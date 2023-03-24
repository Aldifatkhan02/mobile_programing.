import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double widthDevice = Get.width;
  double heightDevice = Get.height;

  @override
  Widget build(BuildContext context) {
    //GETX FITUR
    double paddingTOP = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text("Home"),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTOP;

    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 150,
              maxWidth: 900,
              minHeight: 100,
              minWidth: 850,
            ),
            child: Container(
              height: 10000,
              color: Colors.red,
              child: Text(
                "pertama",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}