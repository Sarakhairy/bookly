import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomeSearchTextField extends StatelessWidget {
  const CustomeSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        hintText: 'Search',
        suffixIcon: IconButton(onPressed: (){}, icon:  Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 25,
                color: kPrimaryColor,
              ),)
      ),
    );
  }
}