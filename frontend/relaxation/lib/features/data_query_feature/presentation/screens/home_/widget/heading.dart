import 'package:flutter/material.dart';
import 'package:relaxation/constants/textstyle.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      'Welcome :D',
                      style: KHeading3,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Relaxation - App',
                      style: KHeading2,
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ]),
    );
  }
}
