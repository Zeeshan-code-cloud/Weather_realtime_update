import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:untitled/blocs/weather_bloc.dart';
import 'package:untitled/blocs/weather_state.dart';
import 'package:untitled/screens/bording_screen/view_urll.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Widget GetWeatherIcon(int code){
    switch(code){
      case >=200 && <300:
        return Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Image.asset("assets/images/thunderstorm.png", scale: 2,),
        );

      case >=300 && <400:
        return Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Image.asset("assets/images/rainy_day.png", scale: 2,),
        );

      case >=500 && <600:
        return Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Image.asset("assets/images/heavy_rain.png", scale: 2,),
        );

      case >=600 && <700:
        return Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Image.asset("assets/images/snowy.png", scale: 2,),
        );

      case >=700 && <800:
        return Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Image.asset("assets/images/foggy.png",scale: 2,),
        );

      case == 800:
        return Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Image.asset("assets/images/3.png",scale: 2,),
        );

      case >800 && <900:
        return Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Image.asset("assets/images/cloudy.png",scale: 2,),
        );

      default:
        return Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Image.asset("assets/images/2.png",scale: 2,),
        );
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 1.1 * kToolbarHeight, 40, 40),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(10, -0.5),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-10, -0.5),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -1.2),
                child: Container(
                    height: 300,
                    width: 600,
                    decoration: const BoxDecoration(color: Color(0xffffab40))),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  if(state is WeatherSuccess){
                    return SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                        "${state.weather.areaName}",
                        style: const  TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const Text(
                        "Good Morning!",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                     const   Gap(50),
                       GetWeatherIcon(state.weather.weatherConditionCode!),

                       Center(
                        child: Text(
                          "${state.weather.temperature!.celsius!.round()} C",
                          style: const  TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                        Center(
                        child: Text(
                        "${state.weather.weatherMain!.toUpperCase()}",
                          style: const  TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                       Center(
                        child: Text(
                          DateFormat("EEEE dd -").add_jm().format(state.weather.date!),
                          style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                          const   Gap(40),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/3.png",
                                scale: 12,
                              ),
                              const Gap(5.0),
                               Column(
                                children: [
                                const   Text(
                                    "Sunrise",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white70),
                                  ),
                                  Text(
                                    DateFormat().add_jm().format(state.weather.sunrise!),
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/moon.png",
                                scale: 12,
                              ),
                              const Gap(5.0),
                               Column(
                                children: [
                                 const  Text(
                                    "Sunset",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white70),
                                  ),
                                  Text(
                                    DateFormat().add_jm().format(state.weather.sunset!),
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/6.png",
                                scale: 12,
                              ),
                              const Gap(5.0),
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 const  Text(
                                    "Temp Max",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white70),
                                  ),
                                  Text(
                                    state.weather.tempMax!.celsius!.round().toString(),
                                    style:const  TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/7.png",
                                scale: 12,
                              ),
                              const Gap(5.0),
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                               const    Text(
                                    "Tem Min",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white70),
                                  ),
                                  Text(
                                    state.weather.tempMin!.celsius!.round().toString(),
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      ],
                    ),
                  );
                  }
                  else if(state is WeatherLoading){
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                 else{
                   return const  Text("Nothing found");
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
