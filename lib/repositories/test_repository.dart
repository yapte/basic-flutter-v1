import 'package:basic/data_access/http/dio/dio_provider.dart';
import 'package:basic/data_access/http/test_api.dart';

class TestRepository {
  TestApi _testApi = TestApi(dioInstance);

  dynamic ping(dynamic pingRequest) async => await _testApi.ping(pingRequest);
}
