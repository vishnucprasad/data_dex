import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/models/cloud_image/cloud_image.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/miscellaneous_details/failures/miscellaneous_details_failure.dart';
import 'package:data_dex/domain/miscellaneous_details/i_miscellaneous_details_repository.dart';
import 'package:data_dex/domain/miscellaneous_details/models/miscellaneous_details.dart';
import 'package:data_dex/domain/miscellaneous_details/models/payout_details/payout_details.dart';
import 'package:data_dex/domain/miscellaneous_details/models/reference_details/reference_details.dart';
import 'package:data_dex/domain/miscellaneous_details/models/remarks_and_more/remarks_and_more.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'miscellaneous_form_event.dart';
part 'miscellaneous_form_state.dart';
part 'miscellaneous_form_bloc.freezed.dart';

@injectable
class MiscellaneousDetailsFormBloc
    extends Bloc<MiscellaneousDetailsFormEvent, MiscellaneousDetailsFormState> {
  final IMiscellaneousDetailsRepository _miscellaneousDetailsRepository;
  MiscellaneousDetailsFormBloc(
    this._miscellaneousDetailsRepository,
  ) : super(MiscellaneousDetailsFormState.initial()) {
    on<MiscellaneousDetailsFormEvent>((event, emit) async {
      await event.map(
        initialized: (_) async => emit(MiscellaneousDetailsFormState.initial()),
        loanIdChanged: (e) async => emit(state.copyWith(
          loanId: e.loanId,
        )),
        formStepChanged: (e) async {
          if (e.index == 1 && state.payoutDetails.failureOption.isSome()) {
            return emit(state.copyWith(
              showValidationError: true,
              failureOrSuccess: none(),
            ));
          }

          if (e.index == 2 && state.referenceDetails.failureOption.isSome()) {
            return emit(state.copyWith(
              showValidationError: true,
              failureOrSuccess: none(),
            ));
          }

          emit(state.copyWith(
            formStep: e.index,
            showValidationError: false,
            failureOrSuccess: none(),
          ));
        },
        payeeNameChanged: (e) async => emit(state.copyWith(
          payoutDetails: state.payoutDetails.copyWith(
            payeeName: e.payeeName,
          ),
          failureOrSuccess: none(),
        )),
        payeeAmountChanged: (e) async => emit(state.copyWith(
          payoutDetails: state.payoutDetails.copyWith(
            payeeAmount: OptionalPrice(e.payeeAmount),
          ),
          failureOrSuccess: none(),
        )),
        referenceOneNameChanged: (e) async => emit(state.copyWith(
          referenceDetails: state.referenceDetails.copyWith(
            referenceOneName: Name(e.referenceOneName),
          ),
          failureOrSuccess: none(),
        )),
        referenceOnePhoneNumberChanged: (e) async => emit(state.copyWith(
          referenceDetails: state.referenceDetails.copyWith(
            referenceOnePhoneNumber: PhoneNumber(e.referenceOnePhoneNumber),
          ),
          failureOrSuccess: none(),
        )),
        referenceTwoNameChanged: (e) async => emit(state.copyWith(
          referenceDetails: state.referenceDetails.copyWith(
            referenceTwoName: Name(e.referenceTwoName),
          ),
          failureOrSuccess: none(),
        )),
        referenceTwoPhoneNumberChanged: (e) async => emit(state.copyWith(
          referenceDetails: state.referenceDetails.copyWith(
            referenceTwoPhoneNumber: PhoneNumber(e.referenceTwoPhoneNumber),
          ),
          failureOrSuccess: none(),
        )),
        pickApplicantImage: (_) async {
          emit(state.copyWith(
            isApplicantImageUploading: true,
            applicantImage: null,
            failureOrSuccess: none(),
          ));

          final imageOption = await _miscellaneousDetailsRepository.pickImage(
            ImageSource.gallery,
          );

          final XFile? image =
              imageOption.getOrElse(() => throw UnimplementedError());

          if (imageOption.isRight() && image is XFile) {
            final cropOption =
                await _miscellaneousDetailsRepository.cropImage(image);

            return emit(
              await cropOption.fold(
                (l) => state.copyWith(
                  isApplicantImageUploading: false,
                  applicantImage: null,
                  failureOrSuccess: some(left(l)),
                ),
                (r) async {
                  final uploadOption =
                      await _miscellaneousDetailsRepository.uploadImage(
                    state.loanId!,
                    'applicant_image.jpg',
                    XFile.fromData(await r!.readAsBytes()),
                  );

                  return uploadOption.fold(
                    (l) => state.copyWith(
                      isApplicantImageUploading: false,
                      applicantImage: null,
                      failureOrSuccess: some(left(l)),
                    ),
                    (r) => state.copyWith(
                      isApplicantImageUploading: false,
                      applicantImage: r,
                      failureOrSuccess: some(right(unit)),
                    ),
                  );
                },
              ),
            );
          }

          emit(state.copyWith(
            applicantImage: null,
            isApplicantImageUploading: false,
            failureOrSuccess: some(
              left(
                imageOption.fold((l) => l, (r) => null) ??
                    const MiscellaneousDetailsFailure.clientFailure(),
              ),
            ),
          ));
        },
        takeApplicantImage: (_) async {
          emit(state.copyWith(
            isApplicantImageUploading: true,
            applicantImage: null,
            failureOrSuccess: none(),
          ));

          final imageOption = await _miscellaneousDetailsRepository.pickImage(
            ImageSource.camera,
          );

          final XFile? image =
              imageOption.getOrElse(() => throw UnimplementedError());

          if (imageOption.isRight() && image is XFile) {
            final cropOption =
                await _miscellaneousDetailsRepository.cropImage(image);

            return emit(
              await cropOption.fold(
                (l) => state.copyWith(
                  isApplicantImageUploading: false,
                  applicantImage: null,
                  failureOrSuccess: some(left(l)),
                ),
                (r) async {
                  final uploadOption =
                      await _miscellaneousDetailsRepository.uploadImage(
                    state.loanId!,
                    'applicant_image.jpg',
                    XFile.fromData(await r!.readAsBytes()),
                  );

                  return uploadOption.fold(
                    (l) => state.copyWith(
                      isApplicantImageUploading: false,
                      applicantImage: null,
                      failureOrSuccess: some(left(l)),
                    ),
                    (r) => state.copyWith(
                      isApplicantImageUploading: false,
                      applicantImage: r,
                      failureOrSuccess: some(right(unit)),
                    ),
                  );
                },
              ),
            );
          }

          emit(state.copyWith(
            applicantImage: null,
            isApplicantImageUploading: false,
            failureOrSuccess: some(
              left(
                imageOption.fold((l) => l, (r) => null) ??
                    const MiscellaneousDetailsFailure.clientFailure(),
              ),
            ),
          ));
        },
        pickCoApplicantImage: (_) async {
          emit(state.copyWith(
            isCoApplicantImageUploading: true,
            coApplicantImage: null,
            failureOrSuccess: none(),
          ));

          final imageOption = await _miscellaneousDetailsRepository.pickImage(
            ImageSource.gallery,
          );

          final XFile? image =
              imageOption.getOrElse(() => throw UnimplementedError());

          if (imageOption.isRight() && image is XFile) {
            final cropOption =
                await _miscellaneousDetailsRepository.cropImage(image);

            return emit(
              await cropOption.fold(
                (l) => state.copyWith(
                  isCoApplicantImageUploading: false,
                  coApplicantImage: null,
                  failureOrSuccess: some(left(l)),
                ),
                (r) async {
                  final uploadOption =
                      await _miscellaneousDetailsRepository.uploadImage(
                    state.loanId!,
                    'co_applicant_image.jpg',
                    XFile.fromData(await r!.readAsBytes()),
                  );

                  return uploadOption.fold(
                    (l) => state.copyWith(
                      isCoApplicantImageUploading: false,
                      coApplicantImage: null,
                      failureOrSuccess: some(left(l)),
                    ),
                    (r) => state.copyWith(
                      isCoApplicantImageUploading: false,
                      coApplicantImage: r,
                      failureOrSuccess: some(right(unit)),
                    ),
                  );
                },
              ),
            );
          }

          emit(state.copyWith(
            isCoApplicantImageUploading: false,
            coApplicantImage: null,
            failureOrSuccess: some(
              left(
                imageOption.fold((l) => l, (r) => null) ??
                    const MiscellaneousDetailsFailure.clientFailure(),
              ),
            ),
          ));
        },
        takeCoApplicantImage: (_) async {
          emit(state.copyWith(
            isCoApplicantImageUploading: true,
            coApplicantImage: null,
            failureOrSuccess: none(),
          ));

          final imageOption = await _miscellaneousDetailsRepository.pickImage(
            ImageSource.camera,
          );

          final XFile? image =
              imageOption.getOrElse(() => throw UnimplementedError());

          if (imageOption.isRight() && image is XFile) {
            final cropOption =
                await _miscellaneousDetailsRepository.cropImage(image);

            return emit(
              await cropOption.fold(
                (l) => state.copyWith(
                  isCoApplicantImageUploading: false,
                  coApplicantImage: null,
                  failureOrSuccess: some(left(l)),
                ),
                (r) async {
                  final uploadOption =
                      await _miscellaneousDetailsRepository.uploadImage(
                    state.loanId!,
                    'co_applicant_image.jpg',
                    XFile.fromData(await r!.readAsBytes()),
                  );

                  return uploadOption.fold(
                    (l) => state.copyWith(
                      isCoApplicantImageUploading: false,
                      coApplicantImage: null,
                      failureOrSuccess: some(left(l)),
                    ),
                    (r) => state.copyWith(
                      isCoApplicantImageUploading: false,
                      coApplicantImage: r,
                      failureOrSuccess: some(right(unit)),
                    ),
                  );
                },
              ),
            );
          }

          emit(state.copyWith(
            isCoApplicantImageUploading: false,
            coApplicantImage: null,
            failureOrSuccess: some(
              left(
                imageOption.fold((l) => l, (r) => null) ??
                    const MiscellaneousDetailsFailure.clientFailure(),
              ),
            ),
          ));
        },
        pickGuarenterImage: (_) async {
          emit(state.copyWith(
            isGuarenterImageUploading: true,
            guarenterImage: null,
            failureOrSuccess: none(),
          ));

          final imageOption = await _miscellaneousDetailsRepository.pickImage(
            ImageSource.gallery,
          );

          final XFile? image =
              imageOption.getOrElse(() => throw UnimplementedError());

          if (imageOption.isRight() && image is XFile) {
            final cropOption =
                await _miscellaneousDetailsRepository.cropImage(image);

            return emit(
              await cropOption.fold(
                (l) => state.copyWith(
                  isGuarenterImageUploading: false,
                  guarenterImage: null,
                  failureOrSuccess: some(left(l)),
                ),
                (r) async {
                  final uploadOption =
                      await _miscellaneousDetailsRepository.uploadImage(
                    state.loanId!,
                    'guarenter_image.jpg',
                    XFile.fromData(await r!.readAsBytes()),
                  );

                  return uploadOption.fold(
                    (l) => state.copyWith(
                      isGuarenterImageUploading: false,
                      guarenterImage: null,
                      failureOrSuccess: some(left(l)),
                    ),
                    (r) => state.copyWith(
                      isGuarenterImageUploading: false,
                      guarenterImage: r,
                      failureOrSuccess: some(right(unit)),
                    ),
                  );
                },
              ),
            );
          }

          emit(state.copyWith(
            isGuarenterImageUploading: false,
            guarenterImage: null,
            failureOrSuccess: some(
              left(
                imageOption.fold((l) => l, (r) => null) ??
                    const MiscellaneousDetailsFailure.clientFailure(),
              ),
            ),
          ));
        },
        takeGuarenterImage: (_) async {
          emit(state.copyWith(
            isGuarenterImageUploading: true,
            guarenterImage: null,
            failureOrSuccess: none(),
          ));

          final imageOption = await _miscellaneousDetailsRepository.pickImage(
            ImageSource.camera,
          );

          final XFile? image =
              imageOption.getOrElse(() => throw UnimplementedError());

          if (imageOption.isRight() && image is XFile) {
            final cropOption =
                await _miscellaneousDetailsRepository.cropImage(image);

            return emit(
              await cropOption.fold(
                (l) => state.copyWith(
                  isGuarenterImageUploading: false,
                  guarenterImage: null,
                  failureOrSuccess: some(left(l)),
                ),
                (r) async {
                  final uploadOption =
                      await _miscellaneousDetailsRepository.uploadImage(
                    state.loanId!,
                    'guarenter_image.jpg',
                    XFile.fromData(await r!.readAsBytes()),
                  );

                  return uploadOption.fold(
                    (l) => state.copyWith(
                      isGuarenterImageUploading: false,
                      guarenterImage: null,
                      failureOrSuccess: some(left(l)),
                    ),
                    (r) => state.copyWith(
                      isGuarenterImageUploading: false,
                      guarenterImage: r,
                      failureOrSuccess: some(right(unit)),
                    ),
                  );
                },
              ),
            );
          }

          emit(state.copyWith(
            isGuarenterImageUploading: false,
            guarenterImage: null,
            failureOrSuccess: some(
              left(
                imageOption.fold((l) => l, (r) => null) ??
                    const MiscellaneousDetailsFailure.clientFailure(),
              ),
            ),
          ));
        },
        deleteImages: (_) async {
          final deleteOption =
              await _miscellaneousDetailsRepository.deleteImage(state.loanId!);

          emit(deleteOption.fold(
            (l) => state.copyWith(
              applicantImage: null,
              coApplicantImage: null,
              guarenterImage: null,
              failureOrSuccess: some(left(l)),
            ),
            (r) => state.copyWith(
              applicantImage: null,
              coApplicantImage: null,
              guarenterImage: null,
              failureOrSuccess: some(right(r)),
            ),
          ));
        },
        appIdChanged: (e) async => emit(state.copyWith(
          remarksAndMore: state.remarksAndMore.copyWith(
            appId: AppId(e.appId),
          ),
          failureOrSuccess: none(),
        )),
        leadIdChanged: (e) async => emit(state.copyWith(
          remarksAndMore: state.remarksAndMore.copyWith(
            leadId: LeadId(e.leadId),
          ),
          failureOrSuccess: none(),
        )),
        remarksChanged: (e) async => emit(state.copyWith(
          remarksAndMore: state.remarksAndMore.copyWith(
            remarks: Remarks(e.remarks),
          ),
          failureOrSuccess: none(),
        )),
        saveMiscellaneousDetails: (_) async {
          Either<MiscellaneousDetailsFailure, Unit>? failureOrSuccess;

          if (state.remarksAndMore.failureOption.isNone()) {
            emit(state.copyWith(
              isSaving: true,
              showValidationError: false,
              saveFailureOrSuccess: none(),
            ));

            failureOrSuccess =
                await _miscellaneousDetailsRepository.saveMiscellaneousDetails(
              state.loanId!,
              MiscellaneousDetails(
                payoutDetails: state.payoutDetails,
                referenceDetails: state.referenceDetails,
                remarksAndMore: state.remarksAndMore,
                applicantImage: state.applicantImage,
                coApplicantImage: state.coApplicantImage,
                guarenterImage: state.guarenterImage,
              ),
            );
          }

          emit(state.copyWith(
            isSaving: false,
            showValidationError: true,
            saveFailureOrSuccess: optionOf(failureOrSuccess),
          ));
        },
      );
    });
  }
}
