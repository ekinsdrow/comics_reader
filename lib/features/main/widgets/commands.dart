import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:comics_reader/common/assets/constants.dart';
import 'package:comics_reader/features/app/router/router.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class Commands extends StatelessWidget {
  const Commands({Key? key}) : super(key: key);

  //TODO: logic to next screen to BLoC
  Future<void> _openDirectory({
    required BuildContext context,
  }) async {
    final dirPath = await FilePicker.platform.getDirectoryPath();

    if (dirPath != null) {
      final dir = Directory(dirPath);

      if (await dir.exists()) {
        final dirFiles = await dir.list().toList();
        final files = dirFiles.whereType<File>();

        final images = <File>[];

        for (var file in files) {
          final ext = extension(file.path);
          if (ext == '.jpg' ||
              ext == '.jpeg' ||
              ext == '.png' ||
              ext == '.gif') {
            images.add(file);
          }
        }

        context.router.push(
          ComicsRoute(
            file: null,
            images: images,
          ),
        );
      }
    }
  }

  Future<void> _openFile({
    required BuildContext context,
  }) async {
    final pickFile = await FilePicker.platform.pickFiles(
      allowedExtensions: [
        'cbz',
      ],
      type: FileType.custom,
      allowMultiple: false,
    );

    if (pickFile != null) {
      final path = pickFile.files.single.path;

      if (path != null) {
        final file = File(path);
        context.router.push(
          ComicsRoute(
            file: file,
            images: null,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          _Item(
            icon: Icons.file_open,
            text: 'Open file(cbz)',
            tapCallback: () => _openFile(
              context: context,
            ),
          ),
          const SizedBox(
            width: Constants.mediumPadding,
          ),
          _Item(
            icon: Icons.folder,
            text: 'Open folder',
            tapCallback: () => _openDirectory(
              context: context,
            ),
          ),
          const SizedBox(
            width: Constants.mediumPadding,
          ),
          _Item(
            icon: Icons.settings,
            text: 'Settings',
            tapCallback: () {
              context.router.push(
                const SettingsRoute(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.icon,
    required this.text,
    required this.tapCallback,
    Key? key,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback tapCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapCallback,
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Icon(
              icon,
              size: 100,
            ),
            const SizedBox(
              height: Constants.smallPadding,
            ),
            Text(
              text,
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
