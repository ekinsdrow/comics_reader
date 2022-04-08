import 'package:comics_reader/common/assets/constants.dart';
import 'package:comics_reader/common/assets/images/resources.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ComicsPage extends StatefulWidget {
  const ComicsPage({Key? key}) : super(key: key);

  @override
  State<ComicsPage> createState() => _ComicsPageState();
}

class _ComicsPageState extends State<ComicsPage> {
  final _transformationController = TransformationController();
  final _scrollController = ScrollController();
  final _keyboardListnerFocusNode = FocusNode();

  //TODO: save all this in shared
  var scrollDirection = Axis.horizontal;
  var nowScale = 1.0;

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
              onPressed: () {
                setState(() {
                  if (scrollDirection == Axis.horizontal) {
                    scrollDirection = Axis.vertical;
                  } else {
                    scrollDirection = Axis.horizontal;
                  }
                });
              },
              icon: Icon(
                scrollDirection == Axis.horizontal
                    ? Icons.vertical_distribute
                    : Icons.horizontal_distribute,
              ),
            ),
          ],
        ),
        body: SafeArea(
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
                  setState(() {
                    nowScale =
                        _transformationController.value.getMaxScaleOnAxis();
                  });
                },
                child: ListView.separated(
                  controller: _scrollController,
                  scrollDirection: scrollDirection,
                  itemBuilder: (context, index) => const _Item(
                    imagePath: JpgPath.comicsImage,
                  ),
                  itemCount: 100,
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
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
    );
  }
}
