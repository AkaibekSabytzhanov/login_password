
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget? child;
  const Background({
    this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0.0),
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Image.asset(
              'assets/main_top.png',
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Image.asset(
              'assets/login_bottom.png',
              width: size.width * 0.4,
            ),
          ),
          child!,
        ],
      ),
    );
  }
}
