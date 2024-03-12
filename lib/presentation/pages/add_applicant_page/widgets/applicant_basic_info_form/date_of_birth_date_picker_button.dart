import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class DateOfBirthDatePickerButton extends StatelessWidget {
  const DateOfBirthDatePickerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicantFormBloc, ApplicantFormState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll<double>(0),
                  backgroundColor:
                      const MaterialStatePropertyAll<Color>(kSecondaryColor),
                  foregroundColor:
                      const MaterialStatePropertyAll<Color>(kDarkColor),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate:
                        state.isEditing && state.basicInfo.dateOfBirth.isValid()
                            ? DateTime.parse(
                                state.basicInfo.dateOfBirth.getOrCrash(),
                              )
                            : DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    builder: (context, child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: ColorScheme.light(
                            primary: Colors.lightBlue.shade600,
                            onPrimary: kLightColor,
                            onSurface: kDarkColor,
                            surfaceTint: Colors.transparent,
                          ),
                          textButtonTheme: TextButtonThemeData(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors
                                  .lightBlue.shade600, // button text color
                            ),
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );

                  if (selectedDate != null) {
                    context.read<ApplicantFormBloc>().add(
                        ApplicantFormEvent.dateOfBirthChanged(selectedDate));
                  }
                },
                child: Text(
                  state.basicInfo.dateOfBirth.value.fold(
                    (l) => "Date of birth",
                    (dateString) => DateFormat.yMMMd().format(
                      DateTime.parse(dateString),
                    ),
                  ),
                  style: TextStyle(
                    color: state.basicInfo.dateOfBirth.value.fold(
                      (_) => state.showValidationError
                          ? state.formStep == 0
                              ? Theme.of(context).colorScheme.error
                              : kDarkColor
                          : kDarkColor,
                      (_) => kDarkColor,
                    ),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            state.basicInfo.dateOfBirth.value.fold(
              (f) => state.showValidationError
                  ? state.formStep == 0
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            kHeightMd,
                            Row(
                              children: [
                                kWidth,
                                Text(
                                  "Date of birth can't be empty",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      : const SizedBox.shrink()
                  : const SizedBox.shrink(),
              (_) => const SizedBox.shrink(),
            )
          ],
        );
      },
    );
  }
}
