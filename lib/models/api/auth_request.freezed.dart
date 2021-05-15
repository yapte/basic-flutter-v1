// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AuthRequest _$AuthRequestFromJson(Map<String, dynamic> json) {
  return _AuthRequest.fromJson(json);
}

/// @nodoc
class _$AuthRequestTearOff {
  const _$AuthRequestTearOff();

// ignore: unused_element
  _AuthRequest call({@required String username, @required String password}) {
    return _AuthRequest(
      username: username,
      password: password,
    );
  }

// ignore: unused_element
  AuthRequest fromJson(Map<String, Object> json) {
    return AuthRequest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AuthRequest = _$AuthRequestTearOff();

/// @nodoc
mixin _$AuthRequest {
  String get username;
  String get password;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AuthRequestCopyWith<AuthRequest> get copyWith;
}

/// @nodoc
abstract class $AuthRequestCopyWith<$Res> {
  factory $AuthRequestCopyWith(
          AuthRequest value, $Res Function(AuthRequest) then) =
      _$AuthRequestCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$AuthRequestCopyWithImpl<$Res> implements $AuthRequestCopyWith<$Res> {
  _$AuthRequestCopyWithImpl(this._value, this._then);

  final AuthRequest _value;
  // ignore: unused_field
  final $Res Function(AuthRequest) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthRequestCopyWith<$Res>
    implements $AuthRequestCopyWith<$Res> {
  factory _$AuthRequestCopyWith(
          _AuthRequest value, $Res Function(_AuthRequest) then) =
      __$AuthRequestCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$AuthRequestCopyWithImpl<$Res> extends _$AuthRequestCopyWithImpl<$Res>
    implements _$AuthRequestCopyWith<$Res> {
  __$AuthRequestCopyWithImpl(
      _AuthRequest _value, $Res Function(_AuthRequest) _then)
      : super(_value, (v) => _then(v as _AuthRequest));

  @override
  _AuthRequest get _value => super._value as _AuthRequest;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_AuthRequest(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AuthRequest implements _AuthRequest {
  const _$_AuthRequest({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null);

  factory _$_AuthRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthRequestFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthRequest(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthRequest &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$AuthRequestCopyWith<_AuthRequest> get copyWith =>
      __$AuthRequestCopyWithImpl<_AuthRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthRequestToJson(this);
  }
}

abstract class _AuthRequest implements AuthRequest {
  const factory _AuthRequest(
      {@required String username, @required String password}) = _$_AuthRequest;

  factory _AuthRequest.fromJson(Map<String, dynamic> json) =
      _$_AuthRequest.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$AuthRequestCopyWith<_AuthRequest> get copyWith;
}
