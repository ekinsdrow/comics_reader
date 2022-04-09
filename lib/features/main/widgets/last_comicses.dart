import 'package:auto_route/auto_route.dart';
import 'package:comics_reader/common/assets/constants.dart';
import 'package:comics_reader/common/assets/images/resources.dart';
import 'package:comics_reader/features/app/router/router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
    return GestureDetector(
      //TODO:
      onTap: () => context.router.push(
        ComicsRoute(
          file: null,
          images: null,
        ),
      ),
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
                    image: const DecorationImage(
                      image: AssetImage(
                        JpgPath.comicsImage,
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
            const Text(
              'Название',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
