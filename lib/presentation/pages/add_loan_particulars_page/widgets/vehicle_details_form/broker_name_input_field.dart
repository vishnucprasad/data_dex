import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BrokerNameInputField extends HookWidget {
  const BrokerNameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Broker name',
        labelText: 'Broker name',
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        floatingLabelStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        filled: true,
        fillColor: kSecondaryColor,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 16,
        ),
      ),
      onChanged: (brokerName) => context
          .read<LoanParticularsFormBloc>()
          .add(LoanParticularsFormEvent.brokerNameChanged(brokerName)),
    );
  }
}
