import 'package:clean_arcitecture/core/resources/data_state.dart';
import 'package:clean_arcitecture/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:clean_arcitecture/features/feature_weather/data/models/current_city_model.dart';
import 'package:clean_arcitecture/features/feature_weather/domain/entities/current_city_entities.dart';
import 'package:dio/dio.dart';

abstract class WeatherRepository {
  ApiProvider apiProvider;
  WeatherRepository(this.apiProvider);

  Future<DataState<CurrentCityEntities>> fetchCurrentWeatherData(
      String cityName) async {
    try {
      Response response = await apiProvider.callCurrentWeather(cityName);
      if (response.statusCode == 200) {
        CurrentCityEntities currentCityEntities =
            CurrentCityModel.fromJson(response.data);
        return DataSuccess(currentCityEntities);
      } else {
        return const DataFailed("Try again....");
      }
    } catch (e) {
      return const DataFailed("Please check your connection...");
    }
  }
}
