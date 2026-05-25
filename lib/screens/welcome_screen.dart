import 'package:first_app/common/screen_resulation.dart';
import 'package:first_app/common/themecolors.dart';
import 'package:first_app/screens/login.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenResulation.scrnres(context);

    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 300),
                  Container(
                    height: 250,
                    width: 300,
                    child: Image.asset("assets/App_logo/App_logo.jpg"),
                  ),
                   SizedBox(height: 20),
                    
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                          color: ThemeColors.maincolor,
                          fontSize: ScreenResulation.blockHeight * 3,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Again",
                        style: TextStyle(
                          color: ThemeColors.textcolor,
                          fontSize: ScreenResulation.blockHeight * 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Let's get ready to eat healthy and stay fit with our fresh fruits app!",
                    style: TextStyle(
                      color: ThemeColors.text1color,
                      fontSize: ScreenResulation.blockHeight * 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: 
                      ElevatedButton.styleFrom(
                        backgroundColor: ThemeColors.maincolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        "Get Ready",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenResulation.blockHeight * 2.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
