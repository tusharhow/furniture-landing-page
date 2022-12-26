import 'package:flutter/material.dart';
import '../constants.dart';

class ReviewStarComponent extends StatelessWidget {
  const ReviewStarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.star,
          color: kStarColor,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: kStarColor,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: kStarColor,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: kStarColor,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: kStarColor,
          size: 20,
        ),
      ],
    );
  }
}
