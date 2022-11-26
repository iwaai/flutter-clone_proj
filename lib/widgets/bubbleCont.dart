import 'package:flutter/material.dart';

class BubbleCont extends StatelessWidget {
  final String title;
  final IconData? iconn;
  final Color colorr;
  const BubbleCont(this.title, this.iconn, this.colorr, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: colorr,
            boxShadow: const [
              BoxShadow(
                  color: Color(0xFFd8dbe0),
                  offset: Offset(0.5, 0.5),
                  blurRadius: 10.0,
                  spreadRadius: 2)
            ]),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Icon(
            Icons.chat,
            color: Colors.white,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 17, fontFamily: 'Poppins'),
          ),
        ]),
      ),
    );
  }
}
