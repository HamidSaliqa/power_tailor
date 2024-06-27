import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:power_tailor/src/constants/images.dart';
import 'package:power_tailor/src/constants/colors.dart';
import 'package:power_tailor/src/screens/start.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

/// This [_SplashScreenState]  widget handles the animation of various widgets on the splash screen
/// and transitions to the Start screen after a certain duration.
class _SplashScreenState extends State<SplashScreen> {

/// Defines variables for animation control.
/// 
/// [animate]  is a boolean that indicates whether the animation is currently active.
/// [startPosition]  is a double that sets the initial position for animated widgets.
/// [animateDuration] is a Duration object that specifies the length of the animation in milliseconds.

bool animate = true; 
double startPosition = -50; 
Duration animateDuration = const Duration(milliseconds: 1200);
 

@override
  void initState() {
    super.initState();
    animation(); 
  }


/// [animation] method
/// is  Asynchronous function that handles the animation flow:
/// - Delays for the specified duration.
/// - Sets the [animate] variable to false to stop the animation.
/// - Delays for 2 seconds.
/// - Navigates to the Start screen with a zoom transition using Get package.
Future animation() async{
  await Future.delayed( animateDuration); 
  setState(() {
    animate = false; 
  });
  await Future.delayed(const Duration(seconds: 2));
  Get.off(const Start(), transition: Transition.zoom, duration:animateDuration); 
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: p1,
            body: AnimatedOpacity(
              duration: animateDuration,
              opacity: animate? 0 : 1,
              child: Stack(children: [
                Center(
                  child: AnimatedScale(
                    duration: animateDuration,
                    scale: animate ? 2 : 1,
                    child: Image.asset(
                      logo,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: animateDuration,
                  left:70,
                  top: animate? startPosition : 50,
                  child: SvgPicture.asset(
                    iron,
                    width: 90,
                  ),
                ),
                AnimatedPositioned(
                  duration: animateDuration,
                  left: animate ? startPosition : 50,
                  top:  200,
                  child: SvgPicture.asset(
                    wellie,
                    width: 50,
                  ),
                ),
                AnimatedPositioned(
                  duration:animateDuration,
                  left: animate ? startPosition : 60,
                  bottom:  150,
                  child: SvgPicture.asset(
                    machine,
                    width: 100,
                  ),
                ),
                AnimatedPositioned(
                  duration: animateDuration,
                  left:  200,
                  bottom: animate ? startPosition : 155,
                  child: SvgPicture.asset(
                    pen,
                    width: 50,
                  ),
                ),
                AnimatedPositioned(
                  duration: animateDuration,
                  left:  250,
                  bottom:animate ? startPosition :  55,
                  child: SvgPicture.asset(
                    scissor,
                    width: 150,
                  ),
                ),
                AnimatedPositioned(
                  duration:animateDuration,
                  right: animate ? startPosition : 50,
                  bottom: 270,
                  child: SvgPicture.asset(
                    pin,
                    width: 50,
                  ),
                ),
                AnimatedPositioned(
                  duration: animateDuration,
                  right: animate ? startPosition : 10,
                  bottom:  MediaQuery.of(context).size.height / 2 + 50,
                  child: SvgPicture.asset(
                    hook,
                    width: 120,
                  ),
                ),
                AnimatedPositioned(
                  duration: animateDuration,
                  right: animate ? startPosition : 100,
                  top:  150,
                  child: SvgPicture.asset(
                    thread,
                    width: 20,
                  ),
                ),
                AnimatedPositioned(
                  duration:animateDuration,
                  right: animate ? startPosition : 20,
                  top: 50,
                  child: SvgPicture.asset(
                    thread2,
                    width: 20,
                  ),
                ),
                AnimatedPositioned(
                  duration: animateDuration,
                  right: 150,
                  top: animate ? startPosition: 50,
                  child: SvgPicture.asset(
                    pinholder, 
                    width: 20,
                  ),
                ),
              ]),
            )));
  }
}
