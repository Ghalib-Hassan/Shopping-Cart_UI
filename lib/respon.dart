import 'package:flutter/material.dart';

class Responsiveness extends StatelessWidget {
  const Responsiveness({super.key});

  @override
  Widget build(BuildContext context) {
    double widthofscreen = MediaQuery.of(context).size.width;
    double heightofscreen = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: heightofscreen * .35,
                width: widthofscreen * .2,
                color: Colors.red,
              ),
              Container(
                height: heightofscreen * .35,
                width: widthofscreen * .2,
                color: Colors.green,
                child: Text('${heightofscreen}'),
              ),
              Container(
                height: heightofscreen * .35,
                width: widthofscreen * .2,
                color: Colors.blue,
              ),
              Container(
                height: heightofscreen * .35,
                width: widthofscreen * .2,
                color: Colors.amber,
              )
            ],
          )
        ],
      ),
    );
  }
}
