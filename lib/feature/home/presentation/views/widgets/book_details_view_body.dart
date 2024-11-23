import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_action.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:bookly/feature/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.18,
            ),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 40),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 14),
          const BookRating(),
          const SizedBox(height: 17),
          const BookAction(),
          const SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          const SimilarBooksListView(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
