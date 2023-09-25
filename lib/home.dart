import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/tap/ahadeth.dart';
import 'package:islami/tap/quran.dart';
import 'package:islami/tap/radio.dart';
import 'package:islami/tap/sebha.dart';
import 'package:islami/tap/settings.dart';

class HomeScreen extends StatefulWidget {
 // const HomeScreen({super.key});

  static const String routeName="Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int index=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/background.png",
        width: double.infinity,
        fit: BoxFit.fill,),
        Scaffold(
          
appBar: AppBar(

  title: Text("Islami",style:Theme.of(context).textTheme.bodyLarge),


),
bottomNavigationBar: BottomNavigationBar(
  currentIndex: index,
  onTap: (value) {
    index=value;
    setState(() {
      
    });
  },
  items:[
    BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/quran.png")),label: "quran",backgroundColor: MyThemeData.primary),
    BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "sebha",backgroundColor: MyThemeData.primary),
     BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/radio.png")),label: "radio",backgroundColor: MyThemeData.primary),
      BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/ahadeth.png")),label: "ahadeth",backgroundColor: MyThemeData.primary),
       BottomNavigationBarItem(icon:Icon(Icons.settings),label: "settings",backgroundColor: MyThemeData.primary),

]
),
       body:Tap[index] ,
       
       
        ),
      ],
    );
}
List<Widget>Tap=[QuranTab(),SebhaTab(),AhadethTab(),RadioTab(),SettingTab()];
}