/// 1. Declare part '.g.dart' and '.freezed.dart' file rows
/// 2. Replace ModelTemplate by necessary class
/// 3. Fill empty space by necessary data
/// 4. Run command - flutter packages pub run build_runner build --delete-conflicting-outputs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_request.freezed.dart';
part 'auth_request.g.dart';

@freezed
abstract class AuthRequest with _$AuthRequest {
  @JsonSerializable()
  const factory AuthRequest({
    @Required() String username,
    @Required() String password,
  }) = _AuthRequest;

  factory AuthRequest.fromJson(Map<String, dynamic> json) => _$AuthRequestFromJson(json);
}
