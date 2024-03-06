import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_failure.freezed.dart';

@freezed
class LoanFailure with _$LoanFailure {
  const factory LoanFailure.unexpected() = _Unexpected;
  const factory LoanFailure.permissionDenied() = _PermissionDenied;
  const factory LoanFailure.unableToUpdate() = _UnableToUpdate;
  const factory LoanFailure.unableToDelete() = _UnableToDelete;
}
