import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:data_dex/domain/core/value_object.dart';
import 'package:data_dex/domain/core/value_validators.dart';

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Name(String input) {
    return Name._(validateStringNotEmpty(input));
  }
  const Name._(this.value);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory EmailAddress(String input) {
    return EmailAddress._(validateStringNotEmpty(
      input,
    ).flatMap(validateEmailAddress));
  }
  const EmailAddress._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory PhoneNumber(String input) {
    return PhoneNumber._(validateStringNotEmpty(
      input,
    ).flatMap(validatePhoneNumber));
  }
  const PhoneNumber._(this.value);
}

class DateOfBirth extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory DateOfBirth(String input) {
    return DateOfBirth._(validateStringNotEmpty(input));
  }
  const DateOfBirth._(this.value);
}
