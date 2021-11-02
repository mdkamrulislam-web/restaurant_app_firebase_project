import 'package:firebase_project/screens/signup_screen.dart';
// ignore: import_of_legacy_library_into_null_safe
// import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'login_screen.dart';

// ignore: must_be_immutable
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String id = "welcome_screen";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {});
      // ignore: avoid_print
      print(controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                    color: const Color(0xfffe7156),
                    fontSize: size.width.toDouble() / 10,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height / 50,
              ),
              Text(
                'Find The Food You Want in Our.',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                ),
              ),
              Text(
                'All in One Restaurant.',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              // const Icon(FlatIcons.flag),
              Hero(
                tag: 'logo',
                child: SizedBox(
                  height: size.height / 3,
                  width: size.width / 1.25,
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
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20)),
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xfffe7156))),
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, LoginScreen.id);
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
                height: size.height / 50,
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
                            horizontal: 50, vertical: 20)),
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xfffe7156))),
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, SignupScreen.id);
                  });
                },
                child: const Text(
                  'Signup',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
