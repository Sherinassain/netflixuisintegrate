import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'constantelements.dart';

class Play_button extends StatelessWidget {
  const Play_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final Size screensize = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: screensize.width * 0.28,
          child: MaterialButton(
            color: constwhite,
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 35,
                ),
                Text(
                  'Play',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
