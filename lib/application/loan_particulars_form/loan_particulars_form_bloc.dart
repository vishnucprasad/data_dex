import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan/models/loan.dart';
import 'package:data_dex/domain/loan_particulars/failures/loan_particulars_failure.dart';
import 'package:data_dex/domain/loan_particulars/i_loan_particulars_repository.dart';
import 'package:data_dex/domain/loan_particulars/models/emi_details/emi_details.dart';
import 'package:data_dex/domain/loan_particulars/models/loan_details/loan_details.dart';
import 'package:data_dex/domain/loan_particulars/models/loan_particulars.dart';
import 'package:data_dex/domain/loan_particulars/models/vehicle_details/vehicle_details.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'loan_particulars_form_event.dart';
part 'loan_particulars_form_state.dart';
part 'loan_particulars_form_bloc.freezed.dart';

@injectable
class LoanParticularsFormBloc
    extends Bloc<LoanParticularsFormEvent, LoanParticularsFormState> {
  final ILoanParticularsRepository _loanParticularsRepository;
  LoanParticularsFormBloc(
    this._loanParticularsRepository,
  ) : super(LoanParticularsFormState.initial()) {
    on<LoanParticularsFormEvent>((event, emit) async {
      await event.map(
        initialized: (e) async => emit(e.initializeOption.fold(
          () => LoanParticularsFormState.initial(),
          (loan) => LoanParticularsFormState.initial().copyWith(
            isEditing: true,
            loanId: loan.id,
            editingLoan: loan,
            vehicleDetails:
                loan.loanParticulars?.vehicleDetails ?? VehicleDetails.empty(),
            loanDetails:
                loan.loanParticulars?.loanDetails ?? LoanDetails.empty(),
            emiDetails: loan.loanParticulars?.emiDetails ?? EMIDetails.empty(),
          ),
        )),
        loanIdChanged: (e) async => emit(state.copyWith(
          loanId: e.loanId,
          failureOrSuccess: none(),
        )),
        formStepChanged: (e) async {
          if (e.index == 1 && state.vehicleDetails.failureOption.isSome()) {
            return emit(state.copyWith(
              showValidationError: true,
              failureOrSuccess: none(),
            ));
          }

          if (e.index == 2 && state.loanDetails.failureOption.isSome()) {
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
        dealerNameChanged: (e) async => emit(state.copyWith(
          vehicleDetails: state.vehicleDetails.copyWith(
            dealerName: Name(e.dealerName),
          ),
          failureOrSuccess: none(),
        )),
        subDealerNameChanged: (e) async => emit(state.copyWith(
          vehicleDetails: state.vehicleDetails.copyWith(
            subDealerName: e.subDealerName,
          ),
          failureOrSuccess: none(),
        )),
        brokerNameChanged: (e) async => emit(state.copyWith(
          vehicleDetails: state.vehicleDetails.copyWith(
            brokerName: e.brokerName,
          ),
          failureOrSuccess: none(),
        )),
        vehicleNameChanged: (e) async => emit(state.copyWith(
          vehicleDetails: state.vehicleDetails.copyWith(
            vehicleName: Name(e.vehicleName),
          ),
          failureOrSuccess: none(),
        )),
        exShowroomPriceChanged: (e) async => emit(state.copyWith(
          vehicleDetails: state.vehicleDetails.copyWith(
            exShowroomPrice: RequiredPrice(e.exShowroomPrice),
          ),
          failureOrSuccess: none(),
        )),
        onRoadPriceChanged: (e) async => emit(state.copyWith(
          vehicleDetails: state.vehicleDetails.copyWith(
            onRoadPrice: RequiredPrice(e.onRoadPrice),
          ),
          failureOrSuccess: none(),
        )),
        loanAmountChanged: (e) async => emit(state.copyWith(
          loanDetails: state.loanDetails.copyWith(
            loanAmount: RequiredPrice(e.loanAmount),
          ),
          failureOrSuccess: none(),
        )),
        ltvChanged: (e) async => emit(state.copyWith(
          loanDetails: state.loanDetails.copyWith(
            ltv: LTVData(e.ltv),
          ),
          failureOrSuccess: none(),
        )),
        serviceChargeChanged: (e) async => emit(state.copyWith(
          loanDetails: state.loanDetails.copyWith(
            serviceCharge: RequiredPrice(e.serviceCharge),
          ),
          failureOrSuccess: none(),
        )),
        documentationChargeChanged: (e) async => emit(state.copyWith(
          loanDetails: state.loanDetails.copyWith(
            documentationCharge: OptionalPrice(e.documentationCharge),
          ),
          failureOrSuccess: none(),
        )),
        lifeAmountChanged: (e) async => emit(state.copyWith(
          loanDetails: state.loanDetails.copyWith(
            lifeAmount: OptionalPrice(e.lifeAmount),
          ),
          failureOrSuccess: none(),
        )),
        pacAmountChanged: (e) async => emit(state.copyWith(
          loanDetails: state.loanDetails.copyWith(
            pacAmount: OptionalPrice(e.pacAmount),
          ),
          failureOrSuccess: none(),
        )),
        stampDutyChanged: (e) async => emit(state.copyWith(
          loanDetails: state.loanDetails.copyWith(
            stampDuty: RequiredPrice(e.stampDuty),
          ),
          failureOrSuccess: none(),
        )),
        dateShiftingChargeChanged: (e) async => emit(state.copyWith(
          loanDetails: state.loanDetails.copyWith(
            dateShiftingCharge: OptionalPrice(e.dateShiftingCharge),
          ),
          failureOrSuccess: none(),
        )),
        counterAmountChanged: (e) async => emit(state.copyWith(
          loanDetails: state.loanDetails.copyWith(
            counterAmount: OptionalPrice(e.counterAmount),
          ),
          failureOrSuccess: none(),
        )),
        emiAmountChanged: (e) async => emit(state.copyWith(
          emiDetails: state.emiDetails.copyWith(
            emiAmount: RequiredPrice(e.emiAmount),
          ),
          failureOrSuccess: none(),
        )),
        tenureChanged: (e) async => emit(state.copyWith(
          emiDetails: state.emiDetails.copyWith(
            tenure: Tenure(e.tenure),
          ),
          failureOrSuccess: none(),
        )),
        firstEMIDateChanged: (e) async => emit(state.copyWith(
          emiDetails: state.emiDetails.copyWith(
            firstEMIDate: EMIDate(e.firstEMIDate.toIso8601String()),
          ),
          failureOrSuccess: none(),
        )),
        bankNameChanged: (e) async => emit(state.copyWith(
          emiDetails: state.emiDetails.copyWith(
            bankName: Name(e.bankName),
          ),
          failureOrSuccess: none(),
        )),
        repaymentModeChanged: (e) async => emit(state.copyWith(
          emiDetails: state.emiDetails.copyWith(
            repaymentMode: RepaymentMode(e.repaymentMode),
          ),
          failureOrSuccess: none(),
        )),
        saveLoanParticulars: (e) async {
          Either<LoanParticularsFailure, Unit>? failureOrSuccess;

          if (state.emiDetails.failureOption.isNone()) {
            emit(state.copyWith(
              isSaving: true,
              showValidationError: false,
              failureOrSuccess: none(),
            ));

            failureOrSuccess =
                await _loanParticularsRepository.saveLoanParticulars(
              state.loanId!,
              LoanParticulars(
                vehicleDetails: state.vehicleDetails,
                loanDetails: state.loanDetails,
                emiDetails: state.emiDetails,
              ),
            );
          }

          emit(state.copyWith(
            isSaving: false,
            showValidationError: true,
            failureOrSuccess: optionOf(failureOrSuccess),
          ));
        },
      );
    });
  }
}
