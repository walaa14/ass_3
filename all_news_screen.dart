import 'package:flutter/material.dart';
import 'package:ass/dummy_data.dart';
import 'package:ass/NewsWidget.dart';

class AllNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return NewsWidget(
                newsList[index]);
          }),
    );
  }
}