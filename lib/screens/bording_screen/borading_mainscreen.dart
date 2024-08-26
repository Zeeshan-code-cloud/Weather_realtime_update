import 'view_urll.dart';

class BoardingMainscreen extends StatefulWidget {
  const BoardingMainscreen({super.key});

  @override
  State<BoardingMainscreen> createState() => _BoardingMainscreenState();
}

class _BoardingMainscreenState extends State<BoardingMainscreen> {

  List<Widget> screenList = [
    const OnboardingScreen1(),
    const OnboardingScreen2(),
    const OnboardingScreen3()
  ];

  final pageController  = PageController();
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg_color,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.85,
            child: PageView.builder(
                controller: pageController,
                itemCount: screenList.length,
                physics:  const BouncingScrollPhysics(),
                // reverse: true,
                // pageSnapping: true,
                onPageChanged: (int index){
                  setState(() {
                    currentindex = index;

                  });
                },
                itemBuilder: (context, index){
                  return screenList[index];
                }),
          ),
          const Gap(30),
          SmoothPageIndicator(
              controller: pageController,
              count: screenList.length)
        ],
      )
    );
  }
}
