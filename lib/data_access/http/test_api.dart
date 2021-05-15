/// 1. Declare part '.g.dart' file row
/// 2. Declare routs and methods
/// 3. Add necessary annotations
/// 4. Run command - flutter packages pub run build_runner build
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'test_api.g.dart';

@RestApi()
abstract class TestApi {
  factory TestApi(Dio dio, {String baseUrl}) = _TestApi;

  @POST('/test/url')
  // TODO: Set request & response types
  Future<dynamic> ping(@Body() dynamic pingRequest);
}
