import 'package:flutter/material.dart';

import '../constants.dart';
import '../data/review_data.dart';
import 'review_star_component.dart';

class ClientReviewComponent extends StatelessWidget {
  const ClientReviewComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(reviewBG[index]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: kDefaultPadding, top: 140, bottom: kDefaultPadding, right: kDefaultPadding),
                  child: Container(
                    width: 270,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          reviewerImage[index],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            reviewerNameData[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Gilroy-ExtraBold',
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            reviewerRoleData[index],
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontFamily: 'Gilroy-Light',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            reviewerReviewData[index],
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontFamily: 'Gilroy-Light',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const ReviewStarComponent(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
