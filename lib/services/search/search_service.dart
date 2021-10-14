import 'package:dio/dio.dart' hide Headers;
import 'package:preproject/consts/network.dart';
import 'package:preproject/models/serach_model.dart';
import 'package:retrofit/http.dart';

part 'search_service.g.dart';

@RestApi(baseUrl: 'https://$DEV_HOST/tag/')
abstract class SearchService {
  factory SearchService(Dio dio, {String baseUrl}) = _SearchService;

  @GET('search?q={name}&per_page=8/login')
  @Headers(<String,dynamic>{"authorization" : "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImZjYjAwNGE2OTEyNDUzN2U4MGYwZDllNzVhODFmYjI3ODVkZWUzYjljOTY5OGFiZjU4ZWM1YTVjYjI2ZWMyZWRjMTBmM2NlMjYxYTdjZjQwIn0.eyJhdWQiOiIzIiwianRpIjoiZmNiMDA0YTY5MTI0NTM3ZTgwZjBkOWU3NWE4MWZiMjc4NWRlZTNiOWM5Njk4YWJmNThlYzVhNWNiMjZlYzJlZGMxMGYzY2UyNjFhN2NmNDAiLCJpYXQiOjE2MzQxMzAyNjksIm5iZiI6MTYzNDEzMDI2OSwiZXhwIjoxNjY1NjY2MjY5LCJzdWIiOiIxMDg4MzIiLCJzY29wZXMiOltdfQ.ilrAkzRppNfe8s1nPUu4ONzLDkfZq_jJ47Uk3dArcVkMQ_7Hta2S_l28CFqvfMqh8pXl7Gfqhwnxv05_1_JpKOid8wQzdRcn6006tDUb8nd5PbBr2cUyjV1v-WS0KPtIj53YnBM_p0IYEEyxXcAUJnAzjeNCqW4RioFOvLzCqcCfYa2FYXHGRwXNw515rbuR3SUbM6oQM4TfZ-xSkE-tviycy0S2rrKmUQsjjq1OCuU5TGWR6rAzcsv90XVwbtJTTiHQpBvADmA_vPoALz0m0X-1SOrAcsc9FkmzzRb6tm1nzmQU99LkjZbtOMHhieONMEjONJj89NZHfGH1XIOiqROzjg4q1qVPYBu2BNAZVnq2GgVneFacgYarxSGWZKq0Y8UDrUgmfbEMLLKujJdqKb5Qkk_W2S_UHlxofh9QZP0mEjXKzT3rOtad0XcgsQV00d9v6ohnOQU0L2Guopj4mdMTRqE_pVu0EspUYzHgjHxPcsw3iQAjrYMTaueKUm9CBvED2ZMihYQjs0kiPEIbTr_Cgnb0EsuBH0kUW5QC5s2oV5erkWUFXC60CAjsz85yyvWWJ1Tri8IgqkpOHtem2l9deLnSNt7SwaF6sO_iWW7r1dbRaDAfpE06RpzKWq1GvlI1G5abbr1Xq0stYy991wCdMFc_-aT_7Sn4XiUePRo "})
  Future<List<GetSearchResult>> postLoginIngoBody(
      @Path() String name,
      );
}