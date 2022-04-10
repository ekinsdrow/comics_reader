import 'dart:io';

import 'package:comics_reader/features/app/blocs/last_comics/last_comics_bloc.dart';
import 'package:comics_reader/features/comics/blocs/comics/comics_bloc.dart';
import 'package:comics_reader/features/comics/widgets/comics_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComicsScope extends StatelessWidget {
  const ComicsScope({
    required this.child,
    required this.file,
    required this.path,
    required this.type,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final File? file;
  final String? path;
  final ComicsPageType type;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ComicsBloc(
        lastComicsBloc: context.read<LastComicsBloc>(),
      )
        ..add(
          type == ComicsPageType.folder
              ? ComicsEvent.openFolder(path: path!)
              : ComicsEvent.openCBZ(file: file!),
        ),
      child: child,
    );
  }
}
