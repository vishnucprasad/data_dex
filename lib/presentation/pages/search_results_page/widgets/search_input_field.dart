import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/domain/core/debouncer.dart';
import 'package:data_dex/injection.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchInputField extends StatelessWidget {
  const SearchInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search for loans',
        floatingLabelStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        filled: true,
        fillColor: kSecondaryColor,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 16,
        ),
        prefixIcon: const Icon(Icons.search),
      ),
      onChanged: (searchText) {
        getIt<Debouncer>().run(() {
          context.read<AppActionCubit>().searchTextChanged(searchText);
        });
      },
    );
  }
}
