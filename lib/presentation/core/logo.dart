import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KueskiLogo extends StatelessWidget {
  const KueskiLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SvgPicture.asset('assets/icons/kueski_logo.svg', width: 102.0),
          const Text('films', style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
