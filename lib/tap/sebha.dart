import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

class SebhaTab extends StatefulWidget {
  
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter=0;
  List<String>sebha=["الله اكبر","سبحان الله","الحمدلله"];
  int index=0;
  void counterstste(){
    setState(() {
      counter++;
      if(counter==34 && index==0){
        index=1;
        counter=0;
      }else if(index==1&&counter==33){
        index=2;
        counter=0;
      }else if(index==2&&counter==33){
        index=0;
        counter=0;

      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
         TextButton(child: Image.asset("assets/images/sebha_i.png"),
         onPressed: () {
          counterstste();
           
         },),
          Padding(padding: EdgeInsets.only(top: 10)),
        Container(
          child: Text("عدد التسبيحات",style: Theme.of(context).textTheme.bodyMedium,),
          
        ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            width: 50,
            height: 50,
            color:MyThemeData.primary,
      
            child: Text("$counter",textAlign:TextAlign.center,style:Theme.of(context).textTheme.bodyLarge ,),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Container(
            width: 160,
            height: 50,
            color: MyThemeData.primary,
            child: Text(" ${sebha[index]}",textAlign: TextAlign.center,style:Theme.of(context).textTheme.bodyLarge,),
          ),
        ],
      ),
      

    );
  }
  
}