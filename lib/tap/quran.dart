import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/sora_detiles.dart';
import 'package:islami/sora_model.dart';

class QuranTab extends StatelessWidget {
 // const QuranTab({super.key});
 List<String> soraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
            ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
            ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
            ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
            ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
            ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
            ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
            ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
            ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
            "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/qurantap.png"),
          Divider(
            thickness: 2,
            color: MyThemeData.primary,
          ),
          Text("Sora Name",style: Theme.of(context).textTheme.bodyMedium,),
          Divider(
            thickness: 2,
            color: MyThemeData.primary,
          ),
          Expanded(
          child: ListView.builder(itemBuilder: (context, index) {
            
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, SoraDetils.routeName,
                arguments: SoraModel(index, soraName[index]));
              },
              child: Text(soraName[index],style: Theme.of(context).textTheme.bodySmall!.copyWith(color: MyThemeData.blackcolor),
              textAlign: TextAlign.center,),
            );
          }, itemCount: soraName.length,)
          ),
        ],
      ),
      
    );
  }
}