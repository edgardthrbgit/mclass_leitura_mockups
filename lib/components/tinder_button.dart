import 'package:flutter/material.dart';

class TinderButton extends StatelessWidget {
  final String imagePath;
  final String text;

  const TinderButton(
      {Key? key, required String this.imagePath, required String this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 5),
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(
              width: 2,
              color: Colors.white,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  imagePath,
                  height: 20,
                  width: 20,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  text.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
