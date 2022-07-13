import 'package:flutter/material.dart';



class ImageWidget extends StatelessWidget {
  final int index;

  const ImageWidget({
    required this.index,
  }) ;

  @override
  Widget build(BuildContext context) => Container(
    height: 150,
    width: double.infinity,
    child: Card(
      child: Image.network(
        'https://source.unsplash.com/random?sig=$index',
        fit: BoxFit.cover,
      ),
    ),
  );
}