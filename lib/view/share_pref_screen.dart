import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePrefScreen extends StatefulWidget {
  const SharePrefScreen({super.key});

  @override
  State<SharePrefScreen> createState() => _SharePrefScreenState();
}

class _SharePrefScreenState extends State<SharePrefScreen> {
  SharedPreferences? prefs;

  String sPValue = "";
  bool? bValue;
  int? iValue;
  double? dValue;
  List<String> dataOne = [""];

  setInstance() async {
    prefs = await SharedPreferences.getInstance();
  }

  setData() {
    prefs!.setString('prefV', "123456789");
    prefs!.setBool('base', true);
    prefs!.setDouble('point', 3.0);
    prefs!.setInt('fonts', 4);
    prefs!.setStringList('listText', [
      "hello",
      "who r you",
      "demo screen",
      "then after",
    ]);
  }

  getData() {
    sPValue = prefs!.getString('prefV')!;
    bValue = prefs!.getBool('base')!;
    dValue = prefs!.getDouble('point')!;
    iValue = prefs!.getInt('fonts')!;
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "String value : $sPValue",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "bool value : $bValue",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "int value : $iValue",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "double value : $dValue",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "list value : $dataOne",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: setData,
            child: const Text("Send Data"),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: getData,
            child: const Text("Get Data"),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
