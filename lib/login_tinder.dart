import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:mclass_leitura_mockups/utils/color_palette.dart';

import 'components/tinder_button.dart';

class LoginTinder extends StatelessWidget {
  const LoginTinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;

    double espaco_final_logo;
    double size_font;
    if (Platform.isAndroid) {
      print('is not a Mac');
      espaco_final_logo = 50;
      size_font = 12;
    } else {
      print('is a Mac');
      espaco_final_logo = 40;
      size_font = 13;
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Container(
          decoration: const BoxDecoration(
            gradient: ColorPalette.tinderBackgroundGradient,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: IconButton(
                    alignment: Alignment.centerLeft,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: espaco_final_logo),
              Image.asset(
                'assets/images/logo_tinder.png',
                width: 240,
                height: 100,
              ),
              const SizedBox(height: 60),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "By tapping Create Account or Sign In, you agree to our\n",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size_font,
                      ),
                    ),
                    TextSpan(
                      text: "Terms",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: size_font,
                      ),
                    ),
                    TextSpan(
                      text: ". Learn how we process your data in our ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size_font,
                      ),
                    ),
                    TextSpan(
                      text: "Privacy\nPolicy ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: size_font,
                      ),
                    ),
                    TextSpan(
                      text: "and ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size_font,
                      ),
                    ),
                    TextSpan(
                      text: "Cookies Policy.",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: size_font,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const TinderButton(
                imagePath: 'assets/images/logo_apple.png',
                text: 'Sign with Apple',
              ),
              const TinderButton(
                imagePath: 'assets/images/logo_facebook.png',
                text: 'Sign with Facebook',
              ),
              const TinderButton(
                imagePath: 'assets/images/bubble.png',
                text: 'Sign with Phone Number',
              ),
              const SizedBox(height: 20),
              const Text(
                'Trouble Signing In ?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
