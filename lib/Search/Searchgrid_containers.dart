import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Search_Containers extends StatelessWidget {
  final String searchimagepath;

  Search_Containers({
    Key? key,
    required this.searchimagepath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: screensize.width * 0.5,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(searchimagepath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(7)),
      ),
    );
  }
}
