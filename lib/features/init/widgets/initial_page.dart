import 'package:auto_route/auto_route.dart';
import 'package:comics_reader/features/app/router/router.dart';
import 'package:comics_reader/features/init/blocs/init/initial_bloc.dart';
import 'package:comics_reader/features/init/di/inital_page_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InitialPageScope(
      child: BlocListener<InitialBloc, InitialState>(
        listener: (context, state) => state.whenOrNull(
          success: () => context.router.replaceAll(
            [
              const MainRoute(),
            ],
          ),
        ),
        child: Scaffold(
          body: SafeArea(
            child: Center(
              child: Text(
                "Comics Reader",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
