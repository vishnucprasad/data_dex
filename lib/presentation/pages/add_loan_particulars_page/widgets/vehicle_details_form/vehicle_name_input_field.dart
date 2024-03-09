import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VehicleNameInputField extends HookWidget {
  const VehicleNameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<LoanParticularsFormBloc, LoanParticularsFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text =
            state.vehicleDetails.vehicleName.value.getOrElse(() => "");
      },
      builder: (context, state) {
        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Vehicle name',
            labelText: 'Vehicle name',
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
          autovalidateMode: state.showValidationError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: (_) => context
              .read<LoanParticularsFormBloc>()
              .state
              .vehicleDetails
              .vehicleName
              .value
              .fold(
                (f) => state.formStep == 0
                    ? f.maybeMap(
                        empty: (_) => "Vehicle name can't be empty",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (vehicleName) => context
              .read<LoanParticularsFormBloc>()
              .add(LoanParticularsFormEvent.vehicleNameChanged(vehicleName)),
        );
      },
    );
  }
}
