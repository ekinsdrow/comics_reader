import 'package:comics_reader/features/app/data/models/last_comics.dart';
import 'package:sqflite/sqflite.dart';

//TODO: pagination
class LastComicsesDbClient {
  final Database db;

  final _tableName = 'LastComicses';

  LastComicsesDbClient({
    required this.db,
  });

  Future<List<LastComics>> getLastComicses() async {
    final comicsesMap = await db.rawQuery(
      'SELECT * FROM $_tableName ORDER BY dateTime DESC',
    );
    if (comicsesMap.isEmpty) {
      return [];
    }

    final comicses = <LastComics>[];

    for (final c in comicsesMap) {
      final comics = LastComics.fromMap(c);
      comicses.add(comics);
    }

    return comicses;
  }

  Future<int> saveComics({required LastComics comics}) async {
    return await db.insert(
      _tableName,
      comics.toObjectMap(),
    );
  }
}
