import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/router/app_state.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../../provider_dependecy.dart';

class AlbumOrSongList extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppState appState = ref.watch(appStateProvider);
    final albumOrSongState = useState(0);
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: ToggleSwitch(
              minWidth: width * .4,
              initialLabelIndex: albumOrSongState.value,
              cornerRadius: 30.0,
              activeFgColor: Colors.black,
              inactiveBgColor: Colors.black,
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              labels: ['Albums', 'Songs'],
              iconSize: 16,
              customTextStyles: [KHeading3, KHeading3],
              activeBgColors: [
                [Colors.green],
                [Colors.green]
              ],
              onToggle: (index) {
                albumOrSongState.value = index;
              },
            ),
          ),
        ),
        Flexible(
          flex: 5,
          child: Container(
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 16),
            child: ListView.builder(
              itemCount: 10,
              addRepaintBoundaries: true,
              itemBuilder: (ctx, idx) => Container(
                margin: const EdgeInsets.only(right: 24),
                decoration: new BoxDecoration(
                    border: new Border(bottom: new BorderSide())),
                child: InkWell(
                  onTap: () {
                    appState.copyWith(albumId: 2);
                  },
                  child: ListTile(
                    leading: Icon(
                      albumOrSongState.value == 1
                          ? FontAwesomeIcons.compactDisc
                          : FontAwesomeIcons.listAlt,
                      color: Colors.white,
                    ),
                    subtitle: Center(
                      child: Text(
                        albumOrSongState.value == 1
                            ? 'Ran dom Music sub title'
                            : 'Ran dom Album sub title',
                        style: KSubTitle,
                      ),
                    ),
                    title: Center(
                      child: Text(
                        'Ran dom Music',
                        style: KHeading3,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        albumOrSongState.value == 1
                            ? Icons.play_arrow
                            : Icons.more_vert_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
