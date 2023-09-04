import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeSecondScreen extends StatefulWidget {
  const HomeSecondScreen({super.key});

  @override
  State<HomeSecondScreen> createState() => _HomeSecondScreenState();
}

class _HomeSecondScreenState extends State<HomeSecondScreen> {
  SharedPreferences? prefs;

  List<String> dataOne = [""];
  setInstance() async {
    prefs = await SharedPreferences.getInstance();
  }

  getData() {
    dataOne = prefs!.getStringList('listText')!;

    setState(() {});
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
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "b value : $dataOne  ",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: getData,
            child: const Text("Get Data"),
          ),
        ],
      ),
    );
  }
}
