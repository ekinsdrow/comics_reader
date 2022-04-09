import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'comics.freezed.dart';

@freezed
class Comics with _$Comics {
  factory Comics({
    required String name,
    required List<File> images,
  }) = _Comics;
}
