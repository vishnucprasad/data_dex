import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'applicant_form_event.dart';
part 'applicant_form_state.dart';
part 'applicant_form_bloc.freezed.dart';

@injectable
class ApplicantFormBloc extends Bloc<ApplicantFormEvent, ApplicantFormState> {
  ApplicantFormBloc() : super(ApplicantFormState.initial()) {
    on<ApplicantFormEvent>((event, emit) async {
      await event.map(
        formStepChanged: (e) async => emit(state.copyWith(
          formStep: e.index,
        )),
      );
    });
  }
}
