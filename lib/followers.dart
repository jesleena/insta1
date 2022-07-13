import 'package:flutter/material.dart';



class FollowWidget extends StatelessWidget {
  final int index;

  const FollowWidget({
    required this.index,
  }) ;

  @override
  Widget build(BuildContext context) => Container(
    height: 150,
    width: double.infinity,

    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            radius: 30.0,
            backgroundImage:AssetImage("images/dp.png"),
          ),

          const SizedBox(
            width: 20.0,
            height: 50.0,
          ),
          Text ('Name',
            style: (TextStyle(
              color: Colors.black54,

            )), ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('Follow'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('Contact'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    ),

  );
}