import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../controller/new_controller.dart';
import 'bottom_new_bar/health.dart';
import 'bottom_new_bar/science.dart';
import 'bottom_new_bar/business.dart';
class HomeView extends GetWidget{
  @override
  Widget build(BuildContext context) {
    List<Widget>screens=[
      Business(),
      Science(),
      Health(),
    ];
    NewsController controller=Get.put(NewsController());
    return Scaffold(
        bottomNavigationBar:BottomNavigationBar(
          selectedItemColor: Colors.red,
          currentIndex: controller.currentIndex.value,
          onTap: (val)
          {
            controller.currentIndex.value=val;
          },
          items: [
            BottomNavigationBarItem(
                label: "Business",
                icon: Icon(Icons.business)),
            BottomNavigationBarItem(
                label: "Science",
                icon: Icon(Icons.science)),
            BottomNavigationBarItem(
                label: "health",
                icon: Icon(Icons.health_and_safety)),
          ],

        ),
        body: GetX<NewsController>(builder: (controller)=>screens[controller.currentIndex.value])
    );
  }

}