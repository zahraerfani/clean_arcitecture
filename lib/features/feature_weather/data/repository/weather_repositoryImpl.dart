import 'package:clean_arcitecture/core/resources/data_state.dart';
import 'package:clean_arcitecture/features/feature_weather/domain/entities/current_city_entities.dart';
import 'package:clean_arcitecture/features/feature_weather/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  @override
  Future<DataState<CurrentCityEntities>> fetchCurrentWeatherData(
      String cityName) {
    // TODO: implement fetchCurrentWeatherData
    throw UnimplementedError();
  }
}
