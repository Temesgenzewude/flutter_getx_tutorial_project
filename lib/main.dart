import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/content_page.dart';
import 'package:getx_app/my_detail_page.dart';
import 'package:getx_app/my_home_page.dart';
import 'package:getx_app/recent_contest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const MyHomePage()),
        GetPage(name: "/detail", page: () => const DetailPage()),
        GetPage(name: "/content", page: () => const ContentPage()),
        GetPage(name: "/recentContest", page: () => const RecentContest()),
      ],
      home: const MyHomePage(),
    );
  }
}
