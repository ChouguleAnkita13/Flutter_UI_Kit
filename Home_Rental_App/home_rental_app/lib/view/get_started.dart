import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/start.png",
            width: double.infinity,
            fit: BoxFit.cover,
            height: MediaQuery.sizeOf(context).height / 1.36,
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Text("Lets find your Paradise",style: GoogleFonts.poppins(
              fontSize:22,
              fontWeight:FontWeight.w600,
              color:const Color.fromRGBO(0, 0, 0, 1)
            ),),
            
             SizedBox(
              width: 240,
               child: Text("Find your perfect dream space with just a few clicks",
               textAlign: TextAlign.center,
               style: GoogleFonts.poppins(
                fontSize:15,
                fontWeight:FontWeight.w400,
                color:const Color.fromRGBO(101, 101, 101, 1)
                         ),),
             ),
              ],
            ),
          )),
          
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 55,
        width: 220,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/home");
          },
          backgroundColor:const Color.fromRGBO(32, 169, 247, 1) ,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Text("Get Started",style: GoogleFonts.poppins(
            fontSize:22,
            fontWeight:FontWeight.w400,
            color:const Color.fromRGBO(255, 255, 255, 1)
          ),),
        ),
      ),
    );
  }
}
