import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
class WeatherEvent extends Equatable {


  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FetchWeatherData extends WeatherEvent {

final  Position  postion ;

FetchWeatherData({required this.postion});


@override
  // TODO: implement props
  List<Object?> get props => [postion];
}