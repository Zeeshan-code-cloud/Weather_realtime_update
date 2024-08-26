import 'package:untitled/routes_config/RoutesName.dart';

import 'screen_url.dart';
import 'dart:math' as math;


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  late final  controller = AnimationController(
    duration: const  Duration(seconds: 2),
      vsync:  this)..repeat();
  
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), (){
      return Navigator.popAndPushNamed(context, RoutesName.Boarding_mainScreen);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg_color,
     
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, Widget? child){
            return Transform.rotate(
                angle:controller.value * 4.0 * math.pi,
              child: Container(
              width: 300,
              height: 200,
              decoration: const  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/sun.png")
                )
              ),
            ),);
          },
        ),
      )
    );
  }
}
