import 'package:bloc/bloc.dart';
import 'package:untitled/blocs/weather_event.dart';
import 'package:untitled/blocs/weather_state.dart';
import 'package:untitled/repository/const.dart';
import 'package:weather/weather.dart';




class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial())   {
    on<FetchWeatherData>((event, emit) async {
      emit(WeatherLoading());
    try{

      WeatherFactory wf = await WeatherFactory(AppConst.my_api_key,);

      Weather weather = await  wf.currentWeatherByLocation(
          event.postion.latitude,
        event.postion.longitude
      );
      emit(WeatherSuccess(weather: weather));
    }
    catch (e){
      emit(WeatherFailure());
    }
    });
  }
}
