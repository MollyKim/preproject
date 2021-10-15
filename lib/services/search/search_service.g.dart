// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _SearchService implements SearchService {
  _SearchService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://billyapi.com/api/tag/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<GetSearchResult>> searchName(name) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<GetSearchResult>>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'authorization':
                      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImZjYjAwNGE2OTEyNDUzN2U4MGYwZDllNzVhODFmYjI3ODVkZWUzYjljOTY5OGFiZjU4ZWM1YTVjYjI2ZWMyZWRjMTBmM2NlMjYxYTdjZjQwIn0.eyJhdWQiOiIzIiwianRpIjoiZmNiMDA0YTY5MTI0NTM3ZTgwZjBkOWU3NWE4MWZiMjc4NWRlZTNiOWM5Njk4YWJmNThlYzVhNWNiMjZlYzJlZGMxMGYzY2UyNjFhN2NmNDAiLCJpYXQiOjE2MzQxMzAyNjksIm5iZiI6MTYzNDEzMDI2OSwiZXhwIjoxNjY1NjY2MjY5LCJzdWIiOiIxMDg4MzIiLCJzY29wZXMiOltdfQ.ilrAkzRppNfe8s1nPUu4ONzLDkfZq_jJ47Uk3dArcVkMQ_7Hta2S_l28CFqvfMqh8pXl7Gfqhwnxv05_1_JpKOid8wQzdRcn6006tDUb8nd5PbBr2cUyjV1v-WS0KPtIj53YnBM_p0IYEEyxXcAUJnAzjeNCqW4RioFOvLzCqcCfYa2FYXHGRwXNw515rbuR3SUbM6oQM4TfZ-xSkE-tviycy0S2rrKmUQsjjq1OCuU5TGWR6rAzcsv90XVwbtJTTiHQpBvADmA_vPoALz0m0X-1SOrAcsc9FkmzzRb6tm1nzmQU99LkjZbtOMHhieONMEjONJj89NZHfGH1XIOiqROzjg4q1qVPYBu2BNAZVnq2GgVneFacgYarxSGWZKq0Y8UDrUgmfbEMLLKujJdqKb5Qkk_W2S_UHlxofh9QZP0mEjXKzT3rOtad0XcgsQV00d9v6ohnOQU0L2Guopj4mdMTRqE_pVu0EspUYzHgjHxPcsw3iQAjrYMTaueKUm9CBvED2ZMihYQjs0kiPEIbTr_Cgnb0EsuBH0kUW5QC5s2oV5erkWUFXC60CAjsz85yyvWWJ1Tri8IgqkpOHtem2l9deLnSNt7SwaF6sO_iWW7r1dbRaDAfpE06RpzKWq1GvlI1G5abbr1Xq0stYy991wCdMFc_-aT_7Sn4XiUePRo '
                },
                extra: _extra)
            .compose(_dio.options, 'search?q=$name&per_page=8/login',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => GetSearchResult.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<DetailData> searchDetail(word) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DetailData>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'authorization':
                      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImZjYjAwNGE2OTEyNDUzN2U4MGYwZDllNzVhODFmYjI3ODVkZWUzYjljOTY5OGFiZjU4ZWM1YTVjYjI2ZWMyZWRjMTBmM2NlMjYxYTdjZjQwIn0.eyJhdWQiOiIzIiwianRpIjoiZmNiMDA0YTY5MTI0NTM3ZTgwZjBkOWU3NWE4MWZiMjc4NWRlZTNiOWM5Njk4YWJmNThlYzVhNWNiMjZlYzJlZGMxMGYzY2UyNjFhN2NmNDAiLCJpYXQiOjE2MzQxMzAyNjksIm5iZiI6MTYzNDEzMDI2OSwiZXhwIjoxNjY1NjY2MjY5LCJzdWIiOiIxMDg4MzIiLCJzY29wZXMiOltdfQ.ilrAkzRppNfe8s1nPUu4ONzLDkfZq_jJ47Uk3dArcVkMQ_7Hta2S_l28CFqvfMqh8pXl7Gfqhwnxv05_1_JpKOid8wQzdRcn6006tDUb8nd5PbBr2cUyjV1v-WS0KPtIj53YnBM_p0IYEEyxXcAUJnAzjeNCqW4RioFOvLzCqcCfYa2FYXHGRwXNw515rbuR3SUbM6oQM4TfZ-xSkE-tviycy0S2rrKmUQsjjq1OCuU5TGWR6rAzcsv90XVwbtJTTiHQpBvADmA_vPoALz0m0X-1SOrAcsc9FkmzzRb6tm1nzmQU99LkjZbtOMHhieONMEjONJj89NZHfGH1XIOiqROzjg4q1qVPYBu2BNAZVnq2GgVneFacgYarxSGWZKq0Y8UDrUgmfbEMLLKujJdqKb5Qkk_W2S_UHlxofh9QZP0mEjXKzT3rOtad0XcgsQV00d9v6ohnOQU0L2Guopj4mdMTRqE_pVu0EspUYzHgjHxPcsw3iQAjrYMTaueKUm9CBvED2ZMihYQjs0kiPEIbTr_Cgnb0EsuBH0kUW5QC5s2oV5erkWUFXC60CAjsz85yyvWWJ1Tri8IgqkpOHtem2l9deLnSNt7SwaF6sO_iWW7r1dbRaDAfpE06RpzKWq1GvlI1G5abbr1Xq0stYy991wCdMFc_-aT_7Sn4XiUePRo '
                },
                extra: _extra)
            .compose(_dio.options, 'data?search=$word&per_page=6',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DetailData.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
