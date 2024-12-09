import 'package:flutter/material.dart';

class StackedImages extends StatefulWidget {
  const StackedImages({super.key});

  @override
  State<StackedImages> createState() => _StackedImagesState();
}

class _StackedImagesState extends State<StackedImages> {
  List randomImages = [
    'assets/images/logo1.png',
    'assets/images/logo2.png',
    'assets/images/logo3.png',
    'assets/images/logo4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < randomImages.length; i++)
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 0),
                  child: Align(
                      widthFactor: 0.5,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 19,
                          backgroundImage: AssetImage(
                            randomImages[i],
                          ),
                        ),
                      )),
                )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.white.withOpacity(0.13),
          ),
        ],
      ),
    );
  }
}
