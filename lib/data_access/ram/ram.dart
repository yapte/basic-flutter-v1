/// 1. Declare part '.freezed.dart' file rows
/// 2. Replace Store by necessary class
/// 3. Fill empty space by necessary data
/// 4. Run command - flutter packages pub run build_runner build --delete-conflicting-outputs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ram.freezed.dart';

@freezed
abstract class Ram with _$Ram {
  const Ram._();
  const factory Ram({
    dynamic accountData,
  }) = _Ram;
}
