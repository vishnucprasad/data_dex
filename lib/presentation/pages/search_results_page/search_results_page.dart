import 'package:auto_route/auto_route.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/search_results_page/widgets/search_input_field.dart';
import 'package:data_dex/presentation/pages/search_results_page/widgets/search_result_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchResultsPage extends StatelessWidget {
  const SearchResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<AppActionCubit>().searchTextChanged('');
        return true;
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0), // Set AppBar height to zero
          child: Container(
            color: Colors.lightBlue.shade600,
          ),
        ),
        body: const SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  kHeightMd,
                  Row(
                    children: [
                      BackButton(),
                      Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 48,
                      ),
                      kWidth,
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SearchInputField(),
              ),
              kHeight,
              SearchResultList(),
            ],
          ),
        ),
      ),
    );
  }
}
