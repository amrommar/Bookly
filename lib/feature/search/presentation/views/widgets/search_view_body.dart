import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/views/widgets/search_list_view.dart';
import 'package:bookly/feature/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 10),
          Text(
            'Search Results',
            style: Styles.textStyle16,
          ),
          SizedBox(height: 10),
          Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}
