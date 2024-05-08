import 'package:flutter/material.dart';
import 'package:police_feedback/customButton.dart';
import 'package:police_feedback/onboarding/final.dart';

class nextScreen extends StatefulWidget {
  const nextScreen({super.key});

  @override
  State<nextScreen> createState() => _nextScreenState();
}

class _nextScreenState extends State<nextScreen> {
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
                  "assets/asset1.png",
                  height: 300,
                ),
                const SizedBox(height: 10),
                const Text(
                  "See live status of your case",
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
                        builder: (context)=>  finalScreen(),
                      ),
                      );
                    },
                    text: "next",
                  ),
                ),
                const SizedBox(height: 10),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
