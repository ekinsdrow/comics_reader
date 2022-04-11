import 'dart:typed_data';

import 'package:comics_reader/features/app/data/models/comics_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_comics.freezed.dart';

@freezed
class LastComics with _$LastComics {
  const LastComics._();

  factory LastComics({
    required String name,
    required Uint8List image,
    required DateTime date,
    required String path,
    required ComicsType comicsType,
  }) = _LastComics;

  factory LastComics.fromMap(Map<String, Object?> map) {
    return LastComics(
      image: map['image'] as Uint8List,
      name: map['name'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int),
      comicsType: map['type'] as int == 0 ? ComicsType.folder : ComicsType.cbz,
      path: map['path'] as String,
    );
  }

  Map<String, Object?> toObjectMap() {
    return {
      'name': name,
      'image': image,
      'dateTime': date.millisecondsSinceEpoch,
      'type': comicsType == ComicsType.folder ? 0 : 1,
      'path': path,
    };
  }
}
