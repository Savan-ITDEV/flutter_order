import 'package:flutter/material.dart';
import 'package:flutter_order/routers/router.dart';
import 'package:flutter_order/view/login.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      unknownRoute: GetPage(
          name: '/notfound', page: () => const Center(child: Text("Error"))),
      initialRoute: '/LoginPage',
      defaultTransition: Transition.fade,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: AppPages.pages,
    );
  }
}
