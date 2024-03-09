import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:data_dex/domain/core/value_object.dart';
import 'package:data_dex/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

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

class RequiredEmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory RequiredEmailAddress(String input) {
    return RequiredEmailAddress._(validateStringNotEmpty(
      input,
    ).flatMap(validateEmailAddress));
  }
  const RequiredEmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    return Password._(
      validateStringNotEmpty(input).flatMap(
        validatePassWord,
      ),
    );
  }
  const Password._(this.value);
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

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }
  factory UniqueId.fromUniqueString(String? uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(
      right(uniqueId!),
    );
  }
  const UniqueId._(this.value);
}

class DateOfBirth extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory DateOfBirth(String input) {
    return DateOfBirth._(validateStringNotEmpty(input));
  }
  const DateOfBirth._(this.value);
}

class HouseName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory HouseName(String input) {
    return HouseName._(validateStringNotEmpty(input)
        .flatMap((input) => validateMaxStringLength(input, 60))
        .flatMap(validateSingleLine));
  }
  const HouseName._(this.value);
}

class PostOffice extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory PostOffice(String input) {
    return PostOffice._(validateStringNotEmpty(input)
        .flatMap((input) => validateMaxStringLength(input, 60))
        .flatMap(validateSingleLine));
  }
  const PostOffice._(this.value);
}

class StreetName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory StreetName(String input) {
    return StreetName._(validateStringNotEmpty(input)
        .flatMap((input) => validateMaxStringLength(input, 60))
        .flatMap(validateSingleLine));
  }
  const StreetName._(this.value);
}

class PinCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory PinCode(String input) {
    return PinCode._(
      validateStringNotEmpty(input)
          .flatMap(validateNumberString)
          .flatMap((input) => validateStringLength(input, 6)),
    );
  }
  const PinCode._(this.value);
}

class RequiredPrice extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory RequiredPrice(String input) {
    return RequiredPrice._(
      validateStringNotEmpty(
        input,
      ).flatMap(validateUnsignedDouble),
    );
  }
  const RequiredPrice._(this.value);
}

class OptionalPrice extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory OptionalPrice(String input) {
    return OptionalPrice._(
      validateUnsignedDouble(
        input,
      ),
    );
  }
  const OptionalPrice._(this.value);
}

class LTVData extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory LTVData(String input) {
    return LTVData._(
      validateStringNotEmpty(
        input,
      ).flatMap(validatePercentageString),
    );
  }
  const LTVData._(this.value);
}

class EMIDate extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory EMIDate(String input) {
    return EMIDate._(validateStringNotEmpty(input));
  }
  const EMIDate._(this.value);
}

class Tenure extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Tenure(String input) {
    return Tenure._(validateStringNotEmpty(input));
  }
  const Tenure._(this.value);
}

class RepaymentMode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory RepaymentMode(String input) {
    return RepaymentMode._(validateStringNotEmpty(input));
  }
  const RepaymentMode._(this.value);
}

class AppId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory AppId(String input) {
    return AppId._(
      validateStringNotEmpty(
        input,
      )
          .flatMap((input) => validateMaxStringLength(input, 8))
          .flatMap(validateNumberString),
    );
  }
  const AppId._(this.value);
}

class LeadId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory LeadId(String input) {
    return LeadId._(
      validateStringNotEmpty(
        input,
      )
          .flatMap((input) => validateMaxStringLength(input, 8))
          .flatMap(validateNumberString),
    );
  }
  const LeadId._(this.value);
}

class Remarks extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Remarks(String input) {
    return Remarks._(
      validateMaxStringLength(input, 1000),
    );
  }
  const Remarks._(this.value);
}
