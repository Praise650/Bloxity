import 'package:flutter/material.dart';

class GraphWidget extends StatelessWidget {
  const GraphWidget({Key? key, this.height, this.width})
      : super(key: key);
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 5,
      width: width ?? 40,
      color: Colors.red,
    );
  }
}
