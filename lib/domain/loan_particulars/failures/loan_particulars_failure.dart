import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_particulars_failure.freezed.dart';

@freezed
class LoanParticularsFailure with _$LoanParticularsFailure {
  const factory LoanParticularsFailure.unexpected() = _Unexpected;
  const factory LoanParticularsFailure.permissionDenied() = _PermissionDenied;
  const factory LoanParticularsFailure.unableToUpdate() = _UnableToUpdate;
  const factory LoanParticularsFailure.unableToDelete() = _UnableToDelete;
}
