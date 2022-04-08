import 'package:comics_reader/common/assets/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Libary extends StatelessWidget {
  const Libary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 100,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const _Item(),
        separatorBuilder: (context, index) => const SizedBox(
          width: Constants.mediumPadding,
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Icon(
          Icons.folder,
          size: 100,
        ),
        SizedBox(
          height: Constants.smallPadding,
        ),
        Text(
          'Название',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
