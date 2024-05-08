import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:police_feedback/fir.dart';
import 'package:police_feedback/theme/app_decoration.dart';
import 'package:police_feedback/theme/custom_text_style.dart';
import 'package:police_feedback/theme/theme_helper.dart';
import 'package:police_feedback/widgets/custom_outlined_button.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: Customshape(), // Assuming your custom clipper for the shape
          child: Stack( // Use a Stack to position elements on top of each other
            children: [
              SizedBox(height: 10,),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: const Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                      children:[
                        SizedBox(height: 30,),
                        Text(
                          'Police Feedback System',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 30,),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/asset3.png'),
                  fit: BoxFit.cover, // Specify the fit as per your requirement
                ),
              ),
              height: 200,
              width: 400,
            ),
            const SizedBox(height: 40),
            _buildTwelve(context),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTwelve(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 22),
      decoration: AppDecoration.outlineGreenA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Divider(indent: 5),
          const SizedBox(height: 25),
          const Align(
            alignment: Alignment.center,
            child: Text('File your FIR here',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold

            ),
            ),
          ),
          const Divider(indent: 5),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "Apply",
                  margin: const EdgeInsets.only(right: 11),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => fir()),
                    );
                  },
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }

}

class Customshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height-50);
    path.quadraticBezierTo(width/2, height, width, height-50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
