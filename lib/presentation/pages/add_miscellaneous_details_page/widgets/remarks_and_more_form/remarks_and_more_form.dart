import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/remarks_and_more_form/app_id_input_field.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/remarks_and_more_form/lead_id_input_field.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/remarks_and_more_form/remarks_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemarksAndMoreForm extends StatelessWidget {
  const RemarksAndMoreForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<MiscellaneousDetailsFormBloc,
        MiscellaneousDetailsFormState>(
      listenWhen: (p, c) => p.saveFailureOrSuccess != c.saveFailureOrSuccess,
      listener: (context, state) {
        state.saveFailureOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (f) => FlushbarHelper.createError(
              message: f.maybeMap(
                clientFailure: (_) => 'Something went wrong.',
                orElse: () => 'Something went wrong.',
              ),
            ).show(context),
            (_) {
              context.maybePop();
            },
          ),
        );
      },
      child: const Column(
        children: [
          kHeightMd,
          AppIDInputField(),
          kHeightMd,
          LeadIDInputField(),
          kHeightMd,
          RemarksInputField(),
          kHeightMd,
        ],
      ),
    );
  }
}
