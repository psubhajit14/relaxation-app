import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:relaxation/constants/textstyle.dart';

class AppHeadline extends StatelessWidget {
  const AppHeadline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Row(
            children: [
              Flexible(
                child: Text(
                  'Welcome To',
                  style: K_Title,
                ),
              ),
              Flexible(
                child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: FaIcon(FontAwesomeIcons.grinBeam)),
              )
            ],
          ),
        ),
        Flexible(
          child: Text(
            'Relaxation App',
            style: K_Heading1,
          ),
        )
      ],
    );
  }
}
