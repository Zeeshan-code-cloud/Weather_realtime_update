import 'view_urll.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              decoration: const  BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/mounntainAnimated.gif")
                  )
              ),
            ),
            Text("Live radar map features", style: TextStyle(
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
