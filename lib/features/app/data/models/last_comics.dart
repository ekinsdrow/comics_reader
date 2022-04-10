import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_comics.freezed.dart';

@freezed
class LastComics with _$LastComics {
  const LastComics._();

  factory LastComics({
    required String name,
    required Uint8List image,
    required DateTime date,
  }) = _LastComics;

  factory LastComics.fromMap(Map<String, Object?> map) {
    return LastComics(
      image: map['image'] as Uint8List,
      name: map['name'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int),
    );
  }

  Map<String, Object?> toObjectMap() {
    return {
      'name': name,
      'image': image,
      'dateTime': date.millisecondsSinceEpoch,
    };
  }
}
