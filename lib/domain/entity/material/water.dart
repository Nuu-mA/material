import 'package:freezed_annotation/freezed_annotation.dart';

part 'water.freezed.dart';

@freezed
class Water with _$Water {
  const factory Water({
    required double temperature,
    required double volume,
  }) = _Water;
}
