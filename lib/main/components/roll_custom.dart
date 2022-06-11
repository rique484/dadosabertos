import 'package:flutter/material.dart';
import 'package:foil/foil.dart';

class RollCustom{
  Widget component(BuildContext context) {
    return Roll(
      crinkle: Crinkle.smooth,
      child: Foil(
        isUnwrapped: false,
        opacity: 0.1,
        gradient: Foils.linearLoopingReversed,
        child: Foil(
            isUnwrapped: false,
            opacity: 0.2,
            // Foil comes with GradientUtils!
            gradient: Foils.oilslick,
            child: Container(
              height: 8,
              width: MediaQuery.of(context).size.width,
              color: Colors.lightGreenAccent,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'lib/main/img/shiny.png',
                      fit: BoxFit.contain,
                      repeat: ImageRepeat.repeat,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'lib/main/img/logo.png',
                      fit: BoxFit.contain,
                      repeat: ImageRepeat.repeat,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}