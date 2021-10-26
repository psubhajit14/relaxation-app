import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/router/app_state.dart';

import '../../../../../provider_dependecy.dart';

class PlaylistBar extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int itemLength = 5;
    return Container(
      color: Colors.transparent,
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: itemLength,
        itemBuilder: (context, index) {
          if (index == itemLength - 1)
            return _CreatePlaylist();
          else
            return _PlaylistDetails();
        },
      ),
    );
  }
}

class _PlaylistDetails extends HookConsumerWidget {
  const _PlaylistDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppState appState = ref.watch(appStateProvider);
    ValueNotifier<bool> isFront = useState(true);
    return InkWell(
      onLongPress: () => isFront.value = !isFront.value,
      child: isFront.value
          ? _CustomCard(
              onTap: () {
                appState.copyWith(playlistId: 2);
              },
              label: Center(
                  child: Text(
                'some playlist',
                textAlign: TextAlign.center,
                softWrap: true,
                style: KHeading3.copyWith(color: Colors.black),
              )))
          : _CustomCard(
              onTap: () {},
              label: Center(
                  child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: Colors.green,
                        )),
                    Divider(
                      color: Colors.black,
                      thickness: 5,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: Colors.black,
                        ))
                  ]))),
            ),
    );
  }
}

class _CreatePlaylist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _CustomCard(
      onTap: () {},
      label: Icon(
        Icons.add,
        color: Colors.green,
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  final Widget label;
  final void Function() onTap;
  const _CustomCard({
    Key? key,
    required this.onTap,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 8.0),
        width: 150,
        child: Card(
          elevation: 5,
          child: label,
        ),
      ),
    );
  }
}
