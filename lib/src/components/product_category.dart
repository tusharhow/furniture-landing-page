import 'package:flutter/material.dart';

import '../constants.dart';
import '../data/category_data.dart';

class ProductCategory extends StatefulWidget {
  const ProductCategory({Key? key}) : super(key: key);

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 410,
      decoration: BoxDecoration(
        color: Colors.black12.withOpacity(0.04),
        borderRadius: BorderRadius.circular(40),
      ),
      child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                height: 20,
                width: 85,
                decoration: BoxDecoration(
                  color: _selectedIndex == index
                      ? Colors.white
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    categoryData[index],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: kDefaultPadding,
                      fontFamily: 'Gilroy-Light',
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
