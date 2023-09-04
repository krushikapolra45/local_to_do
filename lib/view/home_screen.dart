import 'package:flutter/material.dart';
import 'package:local_to_do/view/home_second_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SharedPreferences? prefs;

  List<String> dataOne = [""];

  setInstance() async {
    prefs = await SharedPreferences.getInstance();
  }

  setData() {
    prefs!.setStringList('listText', [
      "krushika",
      "unnati",
      "jeet",
      "dhruv",
    ]);
  }

  @override
  void initState() {
    // TODO: implement initState
    setInstance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              setData();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeSecondScreen(),
                  ));
            },
            child: const Text("Send Data"),
          ),
        ],
      ),
    );
  }
}
