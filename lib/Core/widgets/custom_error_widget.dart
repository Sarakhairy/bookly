import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMessage;
  const CustomErrorWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorMessage,style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600
      ),),
    );
  }
}
