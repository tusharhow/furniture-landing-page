import 'package:flutter/material.dart';
import '../components/client_review_component.dart';
import '../components/more_info_arrow_component.dart';
import '../constants.dart';
import '../widgets/footer_widget.dart';
import '../components/product_category.dart';
import '../components/review_star_component.dart';
import '../components/top_menu_component.dart';
import '../data/chair_data.dart';
import '../data/chair_name_data.dart';
import '../data/chair_price_data.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopMenuWidget(),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200),
              child: Row(
                children: [
                  const Text(
                    'Why\nChoosing Us',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Gilroy-ExtraBold',
                    ),
                  ),
                  const SizedBox(width: 250),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Luxury facilities',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Gilroy-ExtraBold',
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'The advantage of hiring a workspace\nwith us is that givees you comfortable\nservice and all-around facilities.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: kDefaultPadding,
                              fontFamily: 'Gilroy-Light',
                            ),
                          ),
                          SizedBox(height: 20),
                          MoreInfoArrowComponent(),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Affordable Price',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Gilroy-ExtraBold',
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'The advantage of hiring a workspace\nwith us is that givees you comfortable\nservice and all-around facilities.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: kDefaultPadding,
                              fontFamily: 'Gilroy-Light',
                            ),
                          ),
                          SizedBox(height: 20),
                          MoreInfoArrowComponent(),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Many Choices',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Gilroy-ExtraBold',
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'The advantage of hiring a workspace\nwith us is that givees you comfortable\nservice and all-around facilities.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: kDefaultPadding,
                              fontFamily: 'Gilroy-Light',
                            ),
                          ),
                          SizedBox(height: 20),
                          MoreInfoArrowComponent(),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            const Align(
              alignment: Alignment.center,
              child: Text('Best Selling Product',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 42,
                    fontFamily: 'Gilroy-ExtraBold',
                  )),
            ),
            const SizedBox(height: 50),
            const ProductCategory(),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200),
              child: SizedBox(
                height: 480,
                child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 300,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              chairData[index],
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Chair',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: kDefaultPadding,
                                    fontFamily: 'Gilroy-Light',
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  chairNameData[index],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontFamily: 'Gilroy-ExtraBold',
                                  ),
                                ),
                                Row(
                                  children: const [
                                    ReviewStarComponent(),
                                    SizedBox(width: 10),
                                    Text(
                                      '5.0 (23 Reviews)',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: kDefaultPadding,
                                        fontFamily: 'Gilroy-Light',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$${chairPriceData[index]}',
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontFamily: 'Gilroy-ExtraBold',
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        '\$${chairPriceData[index] + 100}',
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: kDefaultPadding,
                                          fontFamily: 'Gilroy-Light',
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: const BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('View All',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/icons/right_arrow.png',
                ),
              ],
            ),
            const SizedBox(height: 50 * 2),
            Row(
              children: [
                Image.asset(
                  'assets/images/banner1.png',
                ),
                const SizedBox(width: 250),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Experience',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18,
                        fontFamily: 'Gilroy-ExtraBold',
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'We provide you the\nbest experience',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 45,
                        fontFamily: 'Gilroy-ExtraBold',
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'You don’t have to worry about the result because all of these\ninteriors are made by people who are professionals in their fields\nwith an elegant and lucurious style and with premium quality materials',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: kDefaultPadding,
                        fontFamily: 'Gilroy-Light',
                      ),
                    ),
                    SizedBox(height: kDefaultPadding),
                    MoreInfoArrowComponent(),
                  ],
                )
              ],
            ),
            const SizedBox(height: 100),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Testimonials',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                  fontFamily: 'Gilroy-ExtraBold',
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Our Client Reviews',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 42,
                  fontFamily: 'Gilroy-ExtraBold',
                ),
              ),
            ),
            const SizedBox(height: 50),
            const ClientReviewComponent(),
            const SizedBox(height: 100),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
