 import 'package:equatable/equatable.dart';
import 'package:weather/weather.dart';

class WeatherState extends Equatable {


  @override
  // TODO: implement props
  List<Object?> get props => [];
}

 class WeatherInitial extends WeatherState {

 }
 class WeatherLoading extends WeatherState {

  @override
  // TODO: implement props
  List<Object?> get props => [];
 }
class WeatherFailure extends WeatherState {

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WeatherSuccess extends WeatherState {
  Weather weather;


  WeatherSuccess({required this.weather});
  @override
  // TODO: implement props
  List<Object?> get props => [weather];
}