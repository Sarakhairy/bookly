import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        const SizedBox(width: 4),
        Text(
          '4.5',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black54,
                fontSize: 16,
              ),
        ),
        const SizedBox(width: 4),
        Text(
          '(200)',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey,
                fontSize: 14,
              ),
        ),
      ],
    );
  }
}