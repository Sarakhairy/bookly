import 'package:bookly/Features/search/presentation/views/widgets/custome_search_text_field.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_results_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 15),
              child: CustomeSearchTextField(),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Search Results",style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,)),
            ),
            Expanded(child: SearchResultsListView()),
          ],
        ),
    );
  }
}