import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(flex: 1, child: Placeholder(color: Colors.blueAccent)),
          Flexible(
              flex: 4,
              child: Container(
                margin: EdgeInsets.fromLTRB(24, 24, 0, 0),
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(flex: 1, child: Placeholder()),
                    Flexible(
                      flex: 2,
                      child: Placeholder(),
                    ),
                    Flexible(
                      flex: 5,
                      child: Placeholder(),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
