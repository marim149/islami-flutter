import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/sora_model.dart';

class SoraDetils extends StatefulWidget {
  //const SoraDetils({super.key});
  static const String routeName="SoraName";

  @override
  State<SoraDetils> createState() => _SoraDetilsState();
}

class _SoraDetilsState extends State<SoraDetils> {
  List<String>soraBody=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SoraModel;
    if(soraBody.isEmpty){
    loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage("assets/images/background.png"),fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name,style: Theme.of(context).textTheme.bodyMedium,) ,
        ),
        body: Card(
          elevation: 14,
          margin: EdgeInsets.all(18),
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: MyThemeData.primary,
            )
          ),
          child: 
          ListView.builder(itemBuilder: (context, index) {
            
            return Text("(${index+1})${soraBody[index]}",textAlign: TextAlign.center,);
        
          },itemCount:soraBody.length ,
          ),
        ),
      ),
    );
  }

  void loadFile(int index)async{
   String sora =await rootBundle.loadString("assets/file/${index+1}.txt");
   List<String>lines= sora.split("\n");
   soraBody=lines;
  setState(() {
    
  });

  }
}