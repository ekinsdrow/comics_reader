import 'package:comics_reader/common/assets/constants.dart';
import 'package:comics_reader/features/main/widgets/last_comicses.dart';
import 'package:comics_reader/features/main/widgets/library.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(Constants.bigPadding),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last Read',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: Constants.mediumPadding,
                    ),
                    const Expanded(
                      child: LastComicses(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: Constants.bigPadding,
              ),
              SizedBox(
                height: 213,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Library',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: Constants.mediumPadding,
                    ),
                    const Expanded(
                      child: Libary(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
