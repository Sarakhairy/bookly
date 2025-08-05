import 'package:bookly/Core/widgets/cutome_button.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  final BookModel bookModel;
  const BooksAction({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CutomeButton(
              text: "Free",
              backgroundColor: Colors.white,
              textColor: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CutomeButton(
              onPressed: () async {
                Uri url = Uri.parse(bookModel.volumeInfo.previewLink ?? '');
                if(await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Could not launch preview link')),
                  );
                }
              },
              text: getText(bookModel),
              backgroundColor: kPrimaryColor,
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
  getText(BookModel bookModel){
    if (bookModel.volumeInfo.previewLink == null || bookModel.volumeInfo.previewLink!.isEmpty) {
      return "No Preview";
    } else {
      return "Preview";
    }
  }
}
