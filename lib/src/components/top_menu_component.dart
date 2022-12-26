import 'package:flutter/material.dart';

import '../constants.dart';

class TopMenuWidget extends StatelessWidget {
  const TopMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.transparent,
              ],
            ).createShader(
              Rect.fromLTRB(
                0,
                800,
                rect.width,
                rect.height,
              ),
            );
          },
          blendMode: BlendMode.dstIn,
          child: Image.asset(
            'assets/images/bg_img.png',
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          top: 30,
          left: 40,
          child: Text(
            'Panto',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Gilroy-ExtraBold',
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: MediaQuery.of(context).size.width * 0.55,
          child: Row(
            children: const [
              Text(
                'Furniture',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Gilroy-Light',
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
        Positioned(
          top: 40,
          right: MediaQuery.of(context).size.width * 0.50,
          child: const Text(
            'Shop',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Gilroy-Light',
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: MediaQuery.of(context).size.width * 0.42,
          child: const Text(
            'About Us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Gilroy-Light',
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: MediaQuery.of(context).size.width * 0.34,
          child: const Text(
            'Contact',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Gilroy-Light',
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: MediaQuery.of(context).size.width * 0.12,
          child: Image.asset(
            'assets/icons/cart.png',
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.15,
          left: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            'Make Your Interior More',
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontFamily: 'Gilroy-ExtraBold',
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.25,
          left: MediaQuery.of(context).size.width * 0.33,
          child: const Text(
            'Minimalist & Modern',
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontFamily: 'Gilroy-ExtraBold',
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.37,
          left: MediaQuery.of(context).size.width * 0.39,
          child: const Text(
            'Turn your room with panto into a lot more minimalist\n and modern with ease and speed',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 24,
              fontFamily: 'Gilroy-Light',
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.48,
          left: MediaQuery.of(context).size.width * 0.43,
          child: SizedBox(
            height: 60,
            width: 330,
            child: TextFormField(
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontFamily: 'Gilroy-Light',
              ),
              decoration: InputDecoration(
                hintText: 'Search furniture',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontFamily: 'Gilroy-Light',
                ),
                contentPadding: const EdgeInsets.only(left: 20, top: 20),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 65,
                    width: 65,
                    decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/icons/search.png',
                    ),
                  ),
                ),
                filled: true,
                fillColor: Colors.white12,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.35,
          left: MediaQuery.of(context).size.width * 0.18,
          child: Image.asset(
            'assets/icons/three_dots.png',
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.28,
          left: MediaQuery.of(context).size.width * 0.19,
          child: Image.asset(
            'assets/icons/single_big_dot.png',
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.22,
          left: MediaQuery.of(context).size.width * 0.08,
          child: Image.asset(
            'assets/icons/single_small_dot.png',
          ),
        ),
      ],
    );
  }
}
