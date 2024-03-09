import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_failure.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalid(failedValue: input));
}

Either<ValueFailure<String>, String> validatePassWord(String input) {
  const passwordRegex =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$';
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalid(failedValue: input));
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const phoneNumberRegex = r'^(\+\d{1,3}[- ]?)?\d{10}$';
  if (RegExp(phoneNumberRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalid(failedValue: input));
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  }
  return left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  }
  return left(ValueFailure.exceedingLength(
    failedValue: input,
    maxLength: maxLength,
  ));
}

Either<ValueFailure<String>, String> validateStringLength(
  String input,
  int length,
) {
  if (input.length == length) {
    return right(input);
  }
  return left(ValueFailure.stringLength(
    failedValue: input,
    length: length,
  ));
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiLine(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateNumberString(String input) {
  const numberRegex = r'^[0-9]+$';
  if (RegExp(numberRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.notANumber(failedValue: input));
}

Either<ValueFailure<String>, String> validateUnsignedDouble(String input) {
  const unsignedDoubleRegex = r'^(0|[1-9]\d*)(\.\d+)?$';
  if (input.isEmpty || RegExp(unsignedDoubleRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.unsignedDouble(failedValue: input));
}

Either<ValueFailure<String>, String> validatePercentageString(String input) {
  const percentageRegex = r'^(100(\.0+)?|\d{0,2}(\.\d+)?)$';
  if (RegExp(percentageRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.percentage(failedValue: input));
}
