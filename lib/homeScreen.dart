import 'package:flutter/material.dart';
import 'package:police_feedback/customButton.dart';
import 'package:police_feedback/onboarding/next%20screen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
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
                  "assets/asset3.png",
                  height: 300,
                ),
                const SizedBox(height: 20),
                const Text(
                  "File your FIR in online mode from our app",
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
                        builder: (context)=>  nextScreen(),
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
