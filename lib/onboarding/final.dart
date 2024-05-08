import 'package:flutter/material.dart';
import 'package:police_feedback/customButton.dart';
import 'package:police_feedback/homef.dart';
import 'package:police_feedback/navscreen.dart';

class finalScreen extends StatefulWidget {
  const finalScreen({super.key});

  @override
  State<finalScreen> createState() => _finalScreenState();
}

class _finalScreenState extends State<finalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:  25, horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Image.asset(
                  "assets/asset2.png",
                  height: 300,
                ),
                const SizedBox(height: 20),

                const SizedBox(height: 10),
                const Text(
                  "Give us your feedback.",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                //CustomButton
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>  NavScreen(),
                      ),
                      );
                    },
                    text: "next",
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
