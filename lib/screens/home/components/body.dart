import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          Container(
            height: 24,
            child: Stack(
              children: [
                const Text(
                  "Recommended",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 7,
                    color: kPrimaryColor.withOpacity(0.2),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
