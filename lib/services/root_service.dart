import 'package:dio/dio.dart';
import 'package:preproject/services/search/search_service.dart';
import 'package:logger/logger.dart';

class RootService {
  static Dio dio = Dio()
    ..interceptors.add(
      InterceptorsWrapper(
        onError: onErrorWrapper,
        onRequest: onRequestWrapper,
        onResponse: onResponseWrapper,
      ),
    );

  SearchService searchService;

  RootService() : this.searchService = SearchService(dio);

  static parseBody(dynamic data) {
    try{
      if(data is List){
        final listDynamic = [];
        for(int index = 0; index < data.length;index ++){
          listDynamic.add(parseBody(data[index]));
        }
      }
      else if(data is Map){
        for(var key in data.keys){
          data[key] = parseBody(data[key]);
        }
      }
      else if(data is int) return data;
      else if(data is double) return data;
      else
        return data.toString();
    } catch(e) {
      print(e);
    }
  }

  static onErrorWrapper(
      DioError error,
      ErrorInterceptorHandler handler,
      ) async {
    var logger = Logger();

    print('error');
    logger.d(error.response!.statusCode);
    logger.d(error.response!.data.toString());
    logger.d(error.response?.headers.toString() ?? '');
    return handler.next(error);
  }

  static onResponseWrapper(
      Response resp,
      ResponseInterceptorHandler handler,
      ) async {
    var logger = Logger();

    print('response');
    logger.d(resp.data);
    return handler.next(resp);
  }

  static onRequestWrapper(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    var logger = Logger();
      // final ct = options.headers['content-type'];
      print('request');
      logger.d("options.data : ${options.data}");
      logger.d("options.path : ${options.path}");
      logger.d("options.uri : ${options.uri}");

    return handler.next(options);
  }

}