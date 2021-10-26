import 'package:flutter/material.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/features/data_query_feature/presentation/widgets/songlist.dart';

class SongQueue extends StatelessWidget {
  const SongQueue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.03,
        minChildSize: .03,
        maxChildSize: 1,
        builder: (BuildContext context, ScrollController scrollController) =>
            Container(
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(children: [
                  PageScroller(
                    scrollController: scrollController,
                    icon: Icons.arrow_drop_up_sharp,
                    label: 'Tap to extend the list',
                    isToTop: true,
                  ),
                  SongList(),
                  PageScroller(
                    scrollController: scrollController,
                    icon: Icons.arrow_drop_down_sharp,
                    label: 'Tap to collapse the list',
                    isToTop: false,
                  ),
                ]),
              ),
            ));
  }
}

class PageScroller extends StatelessWidget {
  final ScrollController scrollController;
  final String label;
  final IconData icon;
  final bool isToTop;

  const PageScroller(
      {Key? key,
      required this.scrollController,
      required this.label,
      required this.icon,
      required this.isToTop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        scrollController.animateTo(
            isToTop ? scrollController.position.maxScrollExtent : 0,
            duration: Duration(seconds: 1),
            curve: Curves.easeInCubic);
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: isToTop
                ? BorderRadius.only(
                    topLeft: Radius.circular(20), topRight: Radius.circular(20))
                : null,
            color: Colors.green),
        child: Column(children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          Text(
            label,
            style: KHeading3.copyWith(color: Colors.black),
          )
        ]),
      ),
    );
  }
}
