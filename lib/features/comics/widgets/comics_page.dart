import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:comics_reader/common/assets/constants.dart';
import 'package:comics_reader/features/app/blocs/settings/settings_bloc.dart';
import 'package:comics_reader/features/app/change_notifiers/settings_notifies.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

class ComicsPage extends StatefulWidget {
  const ComicsPage({
    Key? key,
    required this.file,
    required this.images,
  }) : super(key: key);

  final File? file;
  final List<File>? images;

  @override
  State<ComicsPage> createState() => _ComicsPageState();
}

class _ComicsPageState extends State<ComicsPage> {
  final _transformationController = TransformationController();
  final _scrollController = ScrollController();
  final _keyboardListnerFocusNode = FocusNode();

  final _images = <File>[];

  late Axis scrollDirection;
  late double nowScale;
  var loading = true;

  void _handleKeyboard(RawKeyEvent value) {
    if (scrollDirection == Axis.horizontal) {
      if (value.logicalKey == LogicalKeyboardKey.arrowRight) {
        _scrollListView(_scrollController.offset + 100);
      } else if (value.logicalKey == LogicalKeyboardKey.arrowLeft) {
        _scrollListView(_scrollController.offset - 100);
      }
    } else {
      if (value.logicalKey == LogicalKeyboardKey.arrowDown) {
        _scrollListView(_scrollController.offset + 100);
      } else if (value.logicalKey == LogicalKeyboardKey.arrowUp) {
        _scrollListView(_scrollController.offset - 100);
      }
    }
  }

  void _scrollListView(double value) {
    if (value > -100) {
      _scrollController.animateTo(
        value,
        duration: const Duration(
          milliseconds: 1,
        ),
        curve: Curves.bounceIn,
      );
    }
  }

  void _updateDirection() {
    setState(() {
      if (scrollDirection == Axis.horizontal) {
        scrollDirection = Axis.vertical;
      } else {
        scrollDirection = Axis.horizontal;
      }
    });

    context.read<SettingsBloc>().add(
          SettingsEvent.update(
            settings: context.read<SettingsNotifier>().settings.copyWith(
                  comicsDirection: scrollDirection,
                ),
          ),
        );
  }

  void _updateScale() {
    setState(() {
      nowScale = _transformationController.value.getMaxScaleOnAxis();
    });

    context.read<SettingsBloc>().add(
          SettingsEvent.update(
            settings: context.read<SettingsNotifier>().settings.copyWith(
                  scale: nowScale,
                ),
          ),
        );
  }

  //TODO: in bloc
  Future<void> _openArchieve() async {
    final inputStream = InputFileStream(widget.file!.path);
    final archive = ZipDecoder().decodeBuffer(inputStream);
    for (var file in archive.files) {
      if (file.isFile) {
        final path = (await getApplicationDocumentsDirectory()).path;
        final filepath =
            '$path/${widget.file!.path.split('/').last.split('.').first}';

        final outputStream = OutputFileStream('$filepath/${file.name}');
        file.writeContent(outputStream);
        outputStream.close();

        final f = File('$filepath/${file.name}');
        _images.add(f);
      }
    }

    setState(() {
      _images.sort(
        (a, b) => a.path.compareTo(b.path),
      );

      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    final settings = context.read<SettingsNotifier>().settings;

    scrollDirection = settings.comicsDirection;

    nowScale = settings.scale;
    _transformationController.value.scale(nowScale);

    if (widget.file != null) {
      _openArchieve();
    } else if (widget.images != null) {
      for (var e in widget.images!) {
        _images.add(e);
      }

      setState(() {
        _images.sort(
          (a, b) => a.path.compareTo(b.path),
        );
        loading = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _transformationController.dispose();
    _keyboardListnerFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: _keyboardListnerFocusNode,
      onKey: _handleKeyboard,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Название'),
          centerTitle: false,
          actions: [
            Row(
              children: [
                Text(
                  '${(nowScale * 100).toInt()}%',
                ),
              ],
            ),
            const SizedBox(
              width: Constants.mediumPadding,
            ),
            IconButton(
              onPressed: _updateDirection,
              icon: Icon(
                scrollDirection == Axis.horizontal
                    ? Icons.vertical_distribute
                    : Icons.horizontal_distribute,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Container(
                  padding: const EdgeInsets.all(
                    Constants.bigPadding,
                  ),
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      dragDevices: {
                        PointerDeviceKind.mouse,
                        PointerDeviceKind.touch,
                      },
                    ),
                    child: InteractiveViewer(
                      minScale: 1,
                      maxScale: 2,
                      transformationController: _transformationController,
                      onInteractionEnd: (_) {
                        _updateScale();
                      },
                      child: ListView.separated(
                        controller: _scrollController,
                        scrollDirection: scrollDirection,
                        itemBuilder: (context, index) => _Item(
                          file: _images[index],
                        ),
                        itemCount: _images.length,
                        separatorBuilder: (context, index) => SizedBox(
                          height: scrollDirection == Axis.horizontal
                              ? 0
                              : Constants.mediumPadding,
                          width: scrollDirection == Axis.vertical
                              ? 0
                              : Constants.mediumPadding,
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.file,
    Key? key,
  }) : super(key: key);

  final File file;

  @override
  Widget build(BuildContext context) {
    return Image.file(
      file,
      fit: BoxFit.cover,
    );
  }
}
