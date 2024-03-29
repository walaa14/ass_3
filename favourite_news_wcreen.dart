import 'package:flutter/material.dart';
import 'package:ass/dummy_data.dart';
import 'package:ass/NewsWidget.dart';

class FavouriteNewsScreen extends StatefulWidget {
  @override
  State<FavouriteNewsScreen> createState() => _FavouriteNewsScreenState();
}

class _FavouriteNewsScreenState extends State<FavouriteNewsScreen> {
  rebuildFavouritePage(){
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
          itemCount: newsList.where((element) => element.isLiked).length,
          itemBuilder: (context, index) {
            return NewsWidget(
                newsList.where((element) => element.isLiked).toList()[index],
                rebuildFavouritePage
                );
          }),
    );
  }
}