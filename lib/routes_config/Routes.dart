import 'package:untitled/screens/bording_screen/borading_mainscreen.dart';

import '../screens/bording_screen/view_urll.dart';
import 'screen_urls.dart';

class RoutesConfig {

  static Route generateRoutes(RouteSettings settings){

    switch(settings.name){
      case RoutesName.SplashScreen:
     return    MaterialPageRoute(builder: (BuildContext  context) => const SplashScreen());

      case RoutesName.BoardingScreen1 :
        return MaterialPageRoute(builder: (BuildContext context) => const OnboardingScreen1());

      case RoutesName.BoardingScreen2 :
        return MaterialPageRoute(builder: (BuildContext context) => const OnboardingScreen2());

      case RoutesName.BoardingScreen3 :
        return MaterialPageRoute(builder: (BuildContext context) => const OnboardingScreen3());
      case RoutesName.MainScreen :
        return MaterialPageRoute(builder: (BuildContext context) => const MainScreen());


      case RoutesName.Boarding_mainScreen :
        return MaterialPageRoute(builder: (BuildContext context) => const  BoardingMainscreen());
      default :
        return MaterialPageRoute(builder: (BuildContext context) => const  Scaffold(
          body: Center(
            child: Text("No Screen are founds"),
          ),
        ));
    }
  }
}