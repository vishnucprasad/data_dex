import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VehicleNumberInputField extends HookWidget {
  const VehicleNumberInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return BlocBuilder<MiscellaneousDetailsFormBloc,
        MiscellaneousDetailsFormState>(
      buildWhen: (p, c) => p.showValidationError != c.showValidationError,
      builder: (context, state) {
        if (state.isEditing) {
          controller.text = state.remarksAndMore.vehicleNumber ?? '';
        }

        return TextFormField(
          controller: controller,
          maxLength: 15,
          decoration: InputDecoration(
            hintText: 'Vehicle number',
            labelText: 'Vehicle number',
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
          onChanged: (vehicleNumber) => context
              .read<MiscellaneousDetailsFormBloc>()
              .add(MiscellaneousDetailsFormEvent.vehicleNumberChanged(
                vehicleNumber,
              )),
        );
      },
    );
  }
}
