import 'package:flutter/material.dart';
import '../constants.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      color: Colors.orange.withOpacity(0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Panto',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'Gilroy-ExtraBold',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'The advantage of hiring a workspace with\n us is that givees you comfortable service\nand all-around facilities.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: kDefaultPadding,
                          fontFamily: 'Gilroy-Light',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 30),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Services',
                        style: TextStyle(
                          color: Color(0xffF6973F),
                          fontSize: 17,
                          fontFamily: 'Gilroy-ExtraBold',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Email Marketing',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: kDefaultPadding,
                          fontFamily: 'Gilroy-Light',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Campaigns',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: kDefaultPadding,
                          fontFamily: 'Gilroy-Light',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Branding',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: kDefaultPadding,
                          fontFamily: 'Gilroy-Light',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Furniture',
                        style: TextStyle(
                          color: Color(0xffF6973F),
                          fontSize: 17,
                          fontFamily: 'Gilroy-ExtraBold',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Beds',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: kDefaultPadding,
                          fontFamily: 'Gilroy-Light',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Chair',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: kDefaultPadding,
                          fontFamily: 'Gilroy-Light',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'All',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: kDefaultPadding,
                          fontFamily: 'Gilroy-Light',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Follow Us',
                        style: TextStyle(
                          color: Color(0xffF6973F),
                          fontSize: 17,
                          fontFamily: 'Gilroy-ExtraBold',
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/facebook.png',
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Facebook',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: kDefaultPadding,
                              fontFamily: 'Gilroy-Light',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/twitter.png',
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Twitter',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: kDefaultPadding,
                              fontFamily: 'Gilroy-Light',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/instagram.png',
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Instagram',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: kDefaultPadding,
                              fontFamily: 'Gilroy-Light',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 * 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  '© 2022 Panto. All rights reserved.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: kDefaultPadding,
                    fontFamily: 'Gilroy-Light',
                  ),
                ),
                Spacer(),
                Text(
                  'Terms and Conditions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: kDefaultPadding,
                    fontFamily: 'Gilroy-Light',
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: kDefaultPadding,
                    fontFamily: 'Gilroy-Light',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
