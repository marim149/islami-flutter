import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static const Color primary=Color(0xffB7935F);
  static const Color blackcolor=Color(0xff242424);
  static ThemeData lightTheme=ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: blackcolor,
          ),
        ),
        textTheme: TextTheme(
         bodyLarge: GoogleFonts.elMessiri(fontSize: 30,fontWeight: FontWeight.bold,color:blackcolor,),
         bodySmall:  GoogleFonts.elMessiri(fontSize: 20,fontWeight: FontWeight.w100,color: Color.fromARGB(255, 255, 255, 255),),
         bodyMedium:  GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w700,color:blackcolor,),
        ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: primary,
        selectedItemColor: blackcolor,
        unselectedItemColor: Colors.white,
      ),
      
      );
      
      static ThemeData darkTheme=ThemeData();

}