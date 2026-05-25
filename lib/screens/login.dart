import 'package:first_app/common/screen_resulation.dart';
import 'package:first_app/common/themecolors.dart';
import 'package:first_app/screens/homescreen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final GlobalKey<FormState> loginkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenResulation.blockWidth * 10,
              ),
              child: Form(
                key: loginkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: ScreenResulation.blockHeight * 15),
                    
                    Container(child: Image.asset("assets/App_logo/App_logo.jpg")),
                    SizedBox(height: ScreenResulation.blockHeight * 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: ScreenResulation.blockWidth * 5.5,
                            color: ThemeColors.maincolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    
                        Text(
                          " Back!",
                          style: TextStyle(
                            fontSize: ScreenResulation.blockWidth * 5.5,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Log in and enjoy your shopping",
                      style: TextStyle(color: ThemeColors.text1color),
                    ),
                    SizedBox(height: ScreenResulation.blockHeight * 2.1),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter email";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        labelText: "Email address",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenResulation.blockHeight * 2),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter password";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Center(child:
                                 Text("On Prograss")),
                                backgroundColor: Colors.blue,
                                duration: Duration(seconds: 3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: Colors.black),
                                ),
                                behavior: SnackBarBehavior.floating,
                                margin: EdgeInsets.all(5),
                              ),
                            );
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: ThemeColors.maincolor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenResulation.blockHeight * 2),
                    SizedBox(
                      height: ScreenResulation.blockHeight * 5,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (loginkey.currentState?.validate() ?? false) {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => Homescreen(),
                              ),
                              (route) => false,
                            );
                          }
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenResulation.blockHeight * 1.8,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ThemeColors.maincolor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
