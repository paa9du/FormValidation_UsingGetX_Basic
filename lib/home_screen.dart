import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/formValidation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Get.showSnackbar(GetSnackBar(
                title: "Welcome",
                messageText: Text(
                  'Hai',
                  style: TextStyle(color: Colors.white),
                ),
                duration: Duration(seconds: 2),
              ));
            },
            child: Text('Show SnakeBar'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.defaultDialog(
                  title: "LogOut",
                  content: Text("Do you want to Logout"),
                  cancel: Text("Cancel"),
                  onCancel: () {
                    Get.back();
                  });
            },
            child: Text('Show Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.bottomSheet(
                  Container(
                    height: Get.height * 0.6,
                    child: Text('data'),
                    color: Colors.white,
                  ),
                  isDismissible: false);
            },
            child: Text("Show Bottom Sheet"),
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(FormValidation());
              },
              child: Text("Form validation"))
        ],
      ),
    );
  }
}
