import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RemarksInputField extends HookWidget {
  const RemarksInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<MiscellaneousDetailsFormBloc,
        MiscellaneousDetailsFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        if (!state.isEditing) {
          controller.text = state.remarksAndMore.remarks != null
              ? state.remarksAndMore.remarks!.value.getOrElse(() => '')
              : '';
        }
      },
      buildWhen: (p, c) => p.showValidationError != c.showValidationError,
      builder: (context, state) {
        if (state.isEditing &&
            state.remarksAndMore.remarks != null &&
            state.remarksAndMore.remarks!.isValid()) {
          controller.text =
              state.remarksAndMore.remarks!.value.getOrElse(() => "");
        }

        return TextFormField(
          controller: controller,
          maxLength: 1000,
          maxLines: 10,
          minLines: 1,
          decoration: InputDecoration(
            hintText: 'Remarks',
            labelText: 'Remarks',
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
              .read<MiscellaneousDetailsFormBloc>()
              .state
              .remarksAndMore
              .remarks
              ?.value
              .fold(
                (f) => state.formStep == 3
                    ? f.maybeMap(
                        exceedingLength: (f) =>
                            "Remarks can't exceed ${f.maxLength} characters",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (remarks) => context
              .read<MiscellaneousDetailsFormBloc>()
              .add(MiscellaneousDetailsFormEvent.remarksChanged(remarks)),
        );
      },
    );
  }
}
