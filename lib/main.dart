import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todo_app/features/auth/view/login.dart';
import 'package:todo_app/features/auth/view/register_view.dart';
import 'package:todo_app/features/presentation/lets_start.dart';

import 'features/presentation/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (GetMaterialApp(
      home: Login ()
    ));
  }
}
