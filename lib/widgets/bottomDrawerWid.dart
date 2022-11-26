import 'package:flutter/material.dart';

class BottomDrawerWid extends StatelessWidget {
  const BottomDrawerWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 72,
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xFFF4f6fD), boxShadow: [
          BoxShadow(
              color: Color(0xFFd8dbe0),
              offset: Offset(1, 1),
              blurRadius: 20.0,
              spreadRadius: 10),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: RichText(
                text: const TextSpan(
                    text: '150 GHC',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: ' / month',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.normal))
                    ]),
              ),
            ),
            InkWell(
                onTap: () {},
                child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color(0xff0336FF),
                        borderRadius: BorderRadius.circular(28)),
                    child: const Center(
                        child: Text(
                      "Rent Property",
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                    ))))
          ],
        ));
  }
}
