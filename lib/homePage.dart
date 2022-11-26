// ignore: file_names
import './widgets/bottomDrawerWid.dart';

import './widgets/bubbleCont.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [_imageTile(context), _backButton(), _detailDots()],
          ),
          const SizedBox(
            height: 22,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: const TextSpan(
                        text: '2  BEDROOM APARTMENT FOR ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Poppins'),
                        children: [
                      TextSpan(
                          text: '\nRENT AT TSE ADDO',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black))
                    ])),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      //anonymous function to navigate to last screen
                      onTap: () {},
                      child: Container(
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        // display image here
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/profile.png'))),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const BubbleCont('Start Chat', Icons.chat, Color(0xff0336FF)),
                const BubbleCont('visit Property', Icons.chat, Colors.orange),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            color: const Color(0xff01E08F),
                            borderRadius: BorderRadius.circular(22)),
                        child: const Icon(
                          Icons.location_pin,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          //
          const SizedBox(
            height: 270,
          ),
          const BottomDrawerWid(),
        ],
      ),
    );
  }

  _imageTile(context) {
    return Positioned(
        child: Container(
      height: 400,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/3.png'),
                    fit: BoxFit.cover))),
        Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/3.png'),
                    fit: BoxFit.cover))),
        Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/3.png'),
                    fit: BoxFit.cover)))
      ]),
    ));
  }

  _backButton() {
    //correction the image icon is same as this so OOP??
    return Positioned(
        top: 78,
        left: 23,
        child: InkWell(
          //anonymous function to navigate to last screen
          onTap: () {},
          child: Container(
            height: 43,
            width: 43,
            decoration: BoxDecoration(
              // REMINDER  : import colors from file , set  proj theme to white
              color: const Color(0xff0336FF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        ));
  }

  _detailDots() {
    return Positioned(
        // REMINDER FIX WITH CONTAINER,
        top: 80,
        right: 25,
        child: InkWell(
            onTap: () {},
            child: const Icon(Icons.more_vert, size: 40, color: Colors.white)));
  }
}
