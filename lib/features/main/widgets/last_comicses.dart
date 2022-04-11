import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:comics_reader/common/assets/constants.dart';
import 'package:comics_reader/features/app/blocs/last_comics/last_comics_bloc.dart';
import 'package:comics_reader/features/app/data/models/comics_type.dart';
import 'package:comics_reader/features/app/data/models/last_comics.dart';
import 'package:comics_reader/features/app/router/router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LastComicses extends StatelessWidget {
  const LastComicses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      child: BlocBuilder<LastComicsBloc, LastComicsState>(
        builder: (context, state) => state.when(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error) => Center(
            child: Text(error),
          ),
          comicses: (comicses) => comicses.isEmpty
              ? const Center(
                  child: Text('Don\'t have last comicses'),
                )
              : ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: comicses.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => _Item(
                    lastComics: comicses[index],
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: Constants.mediumPadding,
                  ),
                ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.lastComics,
    Key? key,
  }) : super(key: key);

  final LastComics lastComics;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(
          ComicsRoute(
            file: lastComics.comicsType == ComicsType.cbz
                ? File(lastComics.path)
                : null,
            path: lastComics.comicsType == ComicsType.folder
                ? lastComics.path
                : null,
            type: lastComics.comicsType,
          ),
        );
      },
      child: Container(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 0.75,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: MemoryImage(
                        lastComics.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: Constants.smallPadding,
            ),
            Text(
              lastComics.name,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
