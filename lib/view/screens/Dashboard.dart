import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/viewmodel/getX.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
    final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() {
              return controller.profileImagePath.value == ''
                  ? CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/default_avatar.png'),
                    )
                  : CircleAvatar(
                      radius: 50,
                      backgroundImage: FileImage(File(controller.profileImagePath.value)),
                    );
            }),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.pickImage();
              },
              child: Text('Pick Image from Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}