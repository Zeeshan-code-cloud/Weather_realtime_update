
import 'view_urll.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg_color,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.height*0.4,
              child: Image.asset("assets/images/weather1.gif"),
            ),
            Text("Check Current Weather", style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: AppColors.text_color
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text("Get your hourly forecast Update with us and plan your outdoor picnicks",
              style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400,color: AppColors.text_color),),
            ),
        const     Gap(30),
            MyButton(
                height: MediaQuery.of(context).size.height*0.056,
                width:  MediaQuery.of(context).size.height*0.35,
                title: "Next",
                onTap: (){

                },
                radius: 20.0)
          ],
        ),
      ),
    );
  }
}
