import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/player_/control_button.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:relaxation/features/data_query_feature/presentation/screens/player_/heading.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/player_/song_queue.dart';

class PlayerScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    // final controller = useAnimationController();
    // controller.forward();
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Flexible(flex: 1, child: Heading()),
                  Flexible(
                    flex: 8,
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              flex: 8,
                              child: Icon(
                                FontAwesomeIcons.compactDisc,
                                size: width / 2 < 400 ? width / 2 : 400,
                              ),
                            ),
                            Flexible(flex: 3, child: ControlButton())
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            SongQueue()
          ],
        ));
  }
}
