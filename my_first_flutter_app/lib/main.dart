import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/pages/first_page.dart';
import 'package:my_first_flutter_app/pages/home_page.dart';
import 'package:my_first_flutter_app/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   backgroundColor: const Color(0xFFC5CAE9),
      //   // appBar: AppBar(
      //   //   title: const Center(
      //   //       child: Text("Hello From Flutter"),
      //   //   ),
      //   //   elevation: 1.5,
      //   //   leading: const Icon(Icons.menu_open),
      //   //   actions: [
      //   //     IconButton(
      //   //         onPressed: () {},
      //   //         icon: const Icon(Icons.logout),
      //   //     )
      //   //   ],
      //   // ),
      //   // body: Center(
      //   //   child: Container(
      //   //     width: 300,
      //   //     height: 300,
      //   //     decoration: BoxDecoration(
      //   //       color: const Color(0xffb5635a),
      //   //       borderRadius: BorderRadius.circular(20),
      //   //     ),
      //   //     padding: const EdgeInsets.all(100),
      //   //     child: const Icon(
      //   //       Icons.favorite,
      //   //       color: Colors.white,
      //   //       size: 64,
      //   //     ),
      //   //   ),
      //   // ),
      //   // body: ListView(
      //   //   scrollDirection: Axis.horizontal,
      //   //   children: [
      //   //     Container(
      //   //       width: 200,
      //   //       height: 350,
      //   //       color: Colors.blueGrey,
      //   //     ),
      //   //     Container(
      //   //       width: 250,
      //   //       height: 350,
      //   //       color: Colors.grey,
      //   //     ),
      //   //     Container(
      //   //       width: 200,
      //   //       height: 350,
      //   //       color: Colors.green,
      //   //     ),
      //   //   ],
      //   // ),
      //   // body: ListView.builder(
      //   //     itemCount: names.length,
      //   //     itemBuilder: (context, index) => ListTile(
      //   //       title: Text(names[index]),
      //   //     )),
      //   // body: GridView.builder(
      //   //   itemCount: 4,
      //   //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //   //     itemBuilder: (context, index) => Container(
      //   //       color: Colors.deepPurpleAccent,
      //   //       margin: const EdgeInsets.all(2),
      //   //     )),
      //   // body: Stack(
      //   //   alignment: Alignment.center,
      //   //   children: [
      //   //     Container(
      //   //       height: 300,
      //   //       width: 300,
      //   //       color: Colors.deepPurpleAccent,
      //   //     ),
      //   //     Container(
      //   //       height: 200,
      //   //       width: 200,
      //   //       color: Colors.greenAccent,
      //   //     ),
      //   //     Container(
      //   //       height: 100,
      //   //       width: 100,
      //   //       color: Colors.grey,
      //   //     ),
      //   //   ],
      //   // ),
      //   // body: Center(
      //   //   child: GestureDetector(
      //   //     onTap: userTaped,
      //   //     child: Container(
      //   //       height: 200,
      //   //       width: 200,
      //   //       color: Colors.redAccent,
      //   //       child: const Center(
      //   //           child: Text("Click me!")),
      //   //     ),
      //   //   ),
      //   // ),
      // ),
      home: FirstPage(),
      routes: {
        '/first-page': (context) => FirstPage(),
        '/home-page': (context) => const HomePage(),
        '/settings-page': (context) => const SettingsPage(),
      },
    );
  }
}

