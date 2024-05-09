import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:police_feedback/homef.dart';
import 'package:police_feedback/newButton.dart';

class Register extends StatefulWidget {
  const Register({Key? key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Your UI code as before

            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 360,
              child: newButton(
                onPressed: () {
                  _register();
                },
                text: 'Register',
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _register() async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: _usernameController.text,
          password: _passwordController.text,
        );

        // User is registered, now store additional data in Firestore
        await _firestore.collection('users').doc(userCredential.user!.uid).set({
          'email': _usernameController.text,
          // Add other user data here if needed
        });

        // Navigate to another screen if needed
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => home()), // Replace Home() with your actual home screen
        );
      } catch (e) {
        print("Error occurred: $e");
        // Handle error here
      }
    }
  }
}
