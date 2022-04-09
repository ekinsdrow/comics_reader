import 'dart:io';

import 'package:comics_reader/common/assets/constants.dart';
import 'package:comics_reader/features/app/blocs/settings/settings_bloc.dart';
import 'package:comics_reader/features/app/change_notifiers/settings_notifies.dart';
import 'package:comics_reader/features/comics/blocs/comics/comics_bloc.dart';
import 'package:comics_reader/features/comics/di/comics_scope.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ComicsPageType {
  cbz,
  folder,
}

class ComicsPage extends StatefulWidget {
  const ComicsPage({
    Key? key,
    required this.file,
    required this.path,
    required this.type,
  }) : super(key: key);

  final File? file;
  final String? path;
  final ComicsPageType type;

  @override
  State<ComicsPage> createState() => _ComicsPageState();
}

class _ComicsPageState extends State<ComicsPage> {
  final _transformationController = TransformationController();
  final _scrollController = ScrollController();
  final _keyboardListnerFocusNode = FocusNode();

  late Axis scrollDirection;
  late double nowScale;

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

  @override
  void initState() {
    super.initState();
    final settings = context.read<SettingsNotifier>().settings;

    scrollDirection = settings.comicsDirection;

    nowScale = settings.scale;
    _transformationController.value.scale(nowScale);
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
    return ComicsScope(
      file: widget.file,
      path: widget.path,
      type: widget.type,
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<ComicsBloc, ComicsState>(
            builder: (context, state) => state.when(
              comics: (comics) => Text(comics.name),
              error: (error) => const Text('Error'),
              loading: () => Container(),
            ),
          ),
          centerTitle: false,
          actions: [

            //TODO: add page counts
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
          child: BlocBuilder<ComicsBloc, ComicsState>(
            builder: (context, state) => state.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error) => Center(
                child: Text(
                  error,
                ),
              ),
              comics: (comics) => RawKeyboardListener(
                focusNode: _keyboardListnerFocusNode,
                onKey: _handleKeyboard,
                child: Container(
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
                          file: comics.images[index],
                        ),
                        itemCount: comics.images.length,
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
