
import 'package:bookly/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly/Features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
   SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          SizedBox(
            height: 16,
          ),
          CustomSearchTextField(controller: controller,),
          SizedBox(
            height: 16,
          ),
           Text(
            'Search Result',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit,SearchState>(
          builder: (context,state) {
            if(state is SearchInitial) {
              return Center(
                child: Text(
                  'Search for books',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }else if (state is SearchSuccess) {
  return  ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: state.books.length,
      itemBuilder: (context, index) {
        return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
     child: SearchItem(book: state.books[index]),
  );});
}else if (state is SearchFailure) {
              return Center(child: Text(state.errorMessage));
            } else if(state is SearchLoading) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Center(child: Text('Unexpected state'));
            }
          }
        );
      }
  }
