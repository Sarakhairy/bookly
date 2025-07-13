import 'package:bookly/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: BestSellerItem(),
        );
      },
    );
  }
}