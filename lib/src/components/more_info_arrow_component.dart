import 'package:flutter/material.dart';

import '../constants.dart';

class MoreInfoArrowComponent extends StatelessWidget {
  const MoreInfoArrowComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'More Info',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 10),
        Image.asset(
          'assets/icons/right_arrow.png',
        ),
      ],
    );
  }
}
