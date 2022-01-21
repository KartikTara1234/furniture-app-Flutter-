import 'package:flutter/material.dart';
import 'package:furniture_app/size_config.dart';

class titleText extends StatelessWidget {
  const titleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style:
          TextStyle(fontWeight: FontWeight.bold, fontSize: defaultSize * 1.6),
    );
  }
}
