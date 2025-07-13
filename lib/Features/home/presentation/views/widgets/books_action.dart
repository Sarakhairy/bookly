import 'package:bookly/Core/widgets/cutome_button.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CutomeButton(
              text: "19.99 \$",
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CutomeButton(
              text: "Free Preview",
              backgroundColor: kPrimaryColor,
              textColor: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight : Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}