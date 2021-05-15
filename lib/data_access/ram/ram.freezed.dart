// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ram.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RamTearOff {
  const _$RamTearOff();

// ignore: unused_element
  _Ram call({dynamic accountData}) {
    return _Ram(
      accountData: accountData,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Ram = _$RamTearOff();

/// @nodoc
mixin _$Ram {
  dynamic get accountData;

  @JsonKey(ignore: true)
  $RamCopyWith<Ram> get copyWith;
}

/// @nodoc
abstract class $RamCopyWith<$Res> {
  factory $RamCopyWith(Ram value, $Res Function(Ram) then) =
      _$RamCopyWithImpl<$Res>;
  $Res call({dynamic accountData});
}

/// @nodoc
class _$RamCopyWithImpl<$Res> implements $RamCopyWith<$Res> {
  _$RamCopyWithImpl(this._value, this._then);

  final Ram _value;
  // ignore: unused_field
  final $Res Function(Ram) _then;

  @override
  $Res call({
    Object accountData = freezed,
  }) {
    return _then(_value.copyWith(
      accountData:
          accountData == freezed ? _value.accountData : accountData as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$RamCopyWith<$Res> implements $RamCopyWith<$Res> {
  factory _$RamCopyWith(_Ram value, $Res Function(_Ram) then) =
      __$RamCopyWithImpl<$Res>;
  @override
  $Res call({dynamic accountData});
}

/// @nodoc
class __$RamCopyWithImpl<$Res> extends _$RamCopyWithImpl<$Res>
    implements _$RamCopyWith<$Res> {
  __$RamCopyWithImpl(_Ram _value, $Res Function(_Ram) _then)
      : super(_value, (v) => _then(v as _Ram));

  @override
  _Ram get _value => super._value as _Ram;

  @override
  $Res call({
    Object accountData = freezed,
  }) {
    return _then(_Ram(
      accountData:
          accountData == freezed ? _value.accountData : accountData as dynamic,
    ));
  }
}

/// @nodoc
class _$_Ram extends _Ram {
  const _$_Ram({this.accountData}) : super._();

  @override
  final dynamic accountData;

  @override
  String toString() {
    return 'Ram(accountData: $accountData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ram &&
            (identical(other.accountData, accountData) ||
                const DeepCollectionEquality()
                    .equals(other.accountData, accountData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accountData);

  @JsonKey(ignore: true)
  @override
  _$RamCopyWith<_Ram> get copyWith =>
      __$RamCopyWithImpl<_Ram>(this, _$identity);
}

abstract class _Ram extends Ram {
  const _Ram._() : super._();
  const factory _Ram({dynamic accountData}) = _$_Ram;

  @override
  dynamic get accountData;
  @override
  @JsonKey(ignore: true)
  _$RamCopyWith<_Ram> get copyWith;
}
