import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/model/categories.dart';
import 'package:furniture_app/screens/home/components/category.dart';
import 'package:furniture_app/services/fetchCategories.dart';
import 'package:furniture_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: titleText(title: "Browse by Categories"),
          ),
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) =>
                snapshot.hasData ? categories() : CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}

class categories extends StatelessWidget {
  const categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          categoryCard(category: category),
          categoryCard(category: category),
        ],
      ),
    );
  }
}
