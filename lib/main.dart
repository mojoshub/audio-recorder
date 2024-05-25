import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timeit_1/routes/routes.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(GetMaterialApp(
    initialRoute: '/progresbartest',
    getPages: Routes.routes,
    debugShowCheckedModeBanner: false,
  ));
}
