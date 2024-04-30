import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@freezed
class Address with _$Address {
  const Address._();
  const factory Address({
    required HouseName houseName,
    required PostOffice postOffice,
    required StreetName streetName,
    required Landmark? landmark,
    required PinCode pincode,
    dynamic key,
  }) = _Address;

  factory Address.empty() {
    return Address(
      houseName: HouseName(''),
      postOffice: PostOffice(''),
      streetName: StreetName(''),
      landmark: null,
      pincode: PinCode(''),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return houseName.failureOrUnit
        .andThen(postOffice.failureOrUnit)
        .andThen(streetName.failureOrUnit)
        .andThen(
          landmark == null ? right(unit) : landmark!.failureOrUnit,
        )
        .andThen(pincode.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
