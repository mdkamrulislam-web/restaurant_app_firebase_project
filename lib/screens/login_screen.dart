import 'package:firebase_project/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                          color: const Color(0xfffe7156),
                          fontSize: size.width.toDouble() / 12,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: size.height / 20,
                    ),
                    Hero(
                      tag: 'logo',
                      child: SizedBox(
                        height: size.height / 6,
                        width: size.width / 1.5,
                        child: const Image(
                          image: AssetImage(
                            "assets/images/welcome_image.png",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                      child: TextFormField(
                        validator: (value) => EmailValidator.validate(value!)
                            ? null
                            : "Please Enter a Valid Email Address!",
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color(0xfffe7156).withOpacity(0.5),
                                width: 1.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color(0xfffe7156).withOpacity(1),
                                width: 2.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                      child: TextFormField(
                        obscureText: true,
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter your password.',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color(0xfffe7156).withOpacity(0.5),
                                width: 1.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color(0xfffe7156).withOpacity(1),
                                width: 2.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 20,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10)),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xfffe7156))),
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, HomeScreen.id);
                        });
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Remember Me!',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
