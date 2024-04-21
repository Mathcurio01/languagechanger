import 'package:flutter/material.dart';
import 'package:languagechangerapp/storagehelper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <String> languages=["English","Nepali","Hindi"];
  String currentlanguage="English";
  String key ="lang";

  @override
  void initState() {
   currentlanguage=SharedPreferencesHelper.getLanguage(key)??"English";
    super.initState();
  }
  void changelanguage(String lang)
  {
SharedPreferencesHelper.setLanguage(key,"languages");
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("language changer app using shared prefrences"),
      ),
      body:Column(
        children: [DropdownButton<String>(
  value: currentlanguage,
  onChanged: (String? newValue) {
    setState(() {
      currentlanguage = newValue!;
    });
    // changelanguage(newValue!);
  },
  items: languages
      .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
)],
      )
    );
  }
}