import 'package:comics_reader/features/app/data/models/last_comics.dart';
import 'package:comics_reader/features/app/data/storages_clients/last_comicses_db_client.dart';

abstract class ILastComicsesRepository {
  Future<List<LastComics>> getLastComicses();
  Future<int> saveComics({
    required LastComics comics,
  });
}

class LastComicsesRepository extends ILastComicsesRepository {
  final LastComicsesDbClient dbClient;

  LastComicsesRepository({
    required this.dbClient,
  });

  @override
  Future<List<LastComics>> getLastComicses() => dbClient.getLastComicses();

  @override
  Future<int> saveComics({
    required LastComics comics,
  }) =>
      dbClient.saveComics(comics: comics);
}
