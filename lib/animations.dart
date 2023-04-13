import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'homePage.dart';

class AnimationsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ANIMATIONS "),centerTitle: true,
        elevation: 20,
        backgroundColor: Colors.black87,

      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Center(
                  child: AnimatedTextKit(
                      pause: const Duration(milliseconds: 2000),
                      totalRepeatCount: 1000,
                      animatedTexts: [TypewriterAnimatedText("Code With Majd_ ",textStyle: TextStyle(
                        fontSize: 30,
                      )),],
                  ),
                )),
            Expanded(
              child: Container(
                child: Lottie.asset("assets/welcome.json",),//Lottie.network("https://assets1.lottiefiles.com/private_files/lf30_TBKozE.json"),
              ),
            ),
            Expanded(
              child: Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  child:Lottie.asset("assets/start.json",height: 200,width: 200) ,),
              ),
            )
          ],
        ),
      ),

    );
  }
}
