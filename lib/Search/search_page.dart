import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixuis/Search/Search_title.dart';
import 'package:netflixuis/pages/conswidgets/constantelements.dart';
import 'package:netflixuis/Search/Searchresult_page.dart';
import 'package:netflixuis/Search/searchitems.dart';

class Screensearch extends StatelessWidget {
  const Screensearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: CupertinoSearchTextField(
            backgroundColor: Colors.grey.withOpacity(0.4),
            style: TextStyle(color: Colors.white),
            prefixIcon: Icon(Icons.search,color: Colors.grey,),
            suffixIcon: Icon(CupertinoIcons.xmark_circle_fill,color: Colors.grey,),
          ),
          
        ),
        //serach titile
        // Search_title(title: 'Top Searches'),
     
        SizedBox(height: constantwidths,),
        // Expanded(child: Searchitemlist()),
        Expanded(child: Searchresult_page())
      ],)),
    );
  }
}
