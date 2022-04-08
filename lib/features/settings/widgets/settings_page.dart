import 'package:comics_reader/common/assets/constants.dart';
import 'package:comics_reader/common/assets/themes/themes.dart';
import 'package:comics_reader/features/app/blocs/settings/settings_bloc.dart';
import 'package:comics_reader/features/app/change_notifiers/settings_notifies.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late ThemeMode _themeMode;

  @override
  void initState() {
    super.initState();

    _themeMode = context.read<SettingsNotifier>().settings.themeMode;
  }

  _updateTheme(
    ThemeMode val,
  ) {
    if (val != _themeMode) {
      setState(() {
        _themeMode = val;
      });

      context.read<SettingsBloc>().add(
            SettingsEvent.update(
              settings: context.read<SettingsNotifier>().settings.copyWith(
                    themeMode: _themeMode,
                  ),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(
          Constants.bigPadding,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Theme',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: Constants.mediumPadding,
              ),
              Row(
                children: [
                  Radio<ThemeMode>(
                    value: ThemeMode.dark,
                    groupValue: _themeMode,
                    onChanged: (_) {
                      _updateTheme(ThemeMode.dark);
                    },
                  ),
                  const SizedBox(
                    width: Constants.smallPadding,
                  ),
                  const Text('Dark'),
                ],
              ),
              const SizedBox(
                height: Constants.smallPadding,
              ),
              Row(
                children: [
                  Radio<ThemeMode>(
                    value: ThemeMode.light,
                    groupValue: _themeMode,
                    onChanged: (_) {
                      _updateTheme(ThemeMode.light);
                    },
                  ),
                  const SizedBox(
                    width: Constants.smallPadding,
                  ),
                  const Text('Light'),
                ],
              ),
              const SizedBox(
                height: Constants.smallPadding,
              ),
              Row(
                children: [
                  Radio<ThemeMode>(
                    value: ThemeMode.system,
                    groupValue: _themeMode,
                    onChanged: (_) {
                      _updateTheme(ThemeMode.system);
                    },
                  ),
                  const SizedBox(
                    width: Constants.smallPadding,
                  ),
                  const Text('System'),
                ],
              ),
              const SizedBox(
                height: Constants.mediumPadding,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Developed by ',
                    ),
                    TextSpan(
                      text: 'ekinsdrow',
                      style: const TextStyle(
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => launch('https://github.com/ekinsdrow'),
                    ),
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
