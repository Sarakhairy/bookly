import 'package:bookly/Features/home/presentation/views/widgets/book_details_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_detail_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomBookDetailAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.17),
            child: CustomListViewItem(),
          ),
          const SizedBox(height: 43),
          Text(
            'The Jungle Book',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "Rudyard Kipling",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontStyle: FontStyle.italic,
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 18),
          BookRating(mainAxisAlignment: MainAxisAlignment.center),
          SizedBox(height: 37),
          BooksAction(),
          Expanded(child: SizedBox(height: 50,)),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("You can also like",style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 16,
              fontWeight:FontWeight.w600
            ),),
          ),
          SizedBox(height: 16,),
          BookDetailsListView(),
          SizedBox(height: 40,)
        ],
      ),
    ),
        )
      ],
    );
    
  }
}
